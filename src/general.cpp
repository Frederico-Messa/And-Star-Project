#include "./general.hpp"

std::default_random_engine rng;

Object::Id Object::last_used_id = NONE;

static std::chrono::system_clock::time_point start_time = std::chrono::system_clock::now();

double get_ellapsed_time()
{
    return double(std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::system_clock::now() - start_time).count()) / double(1000) / double(1000) / double(1000);
}

double get_memory_usage()
{
    FILE *file = fopen("/proc/self/statm", "r");
    if (not file)
    {
        std::cout << "Failed to open memory file." << std::endl;
        exit(1);
    }
    unsigned long vm = 0;
    assert(fscanf(file, "%lu", &vm) != EOF);
    fclose(file);
    size_t size = (size_t)vm * getpagesize();
    return double(size) / double(1000) / double(1000) / double(1000);
}

#include <sys/resource.h>

double get_time_limit()
{
    struct rlimit lim;
    getrlimit(RLIMIT_CPU, &lim);
    return double(lim.rlim_max);
}

double get_memory_limit()
{
    struct rlimit lim;
    getrlimit(RLIMIT_AS, &lim);
    return double(lim.rlim_max) / double(1000) / double(1000) / double(1000);
}

#include <future>
#include <boost/process.hpp>

str get_output(const str &label, const str &command, const str &input, const opt<double> &opt_time_limit)
{
    boost::process::ipstream std_out_pstream;
    boost::process::ipstream std_err_pstream;
    boost::process::opstream std_in_pstream;

    double start_time = get_ellapsed_time();
    boost::process::child child_process
    (
        command,
        boost::process::std_out > std_out_pstream,
        boost::process::std_err > std_err_pstream,
        boost::process::std_in < std_in_pstream
    );

    std::stringstream std_out_sstream;
    std::stringstream std_err_sstream;
    std::stringstream std_in_sstream;

    std_in_sstream << input;
    bool is_std_in_pstream_closed = false;

    auto write_in = [&std_in_pstream, &std_in_sstream, &is_std_in_pstream_closed]()
    {
        if (not is_std_in_pstream_closed)
        {
            str buffer;
            while (not std_in_sstream.eof())
            {
                std::getline(std_in_sstream, buffer);
                std_in_pstream << buffer << std::endl;
            }
            if (std_in_sstream.eof())
            {
                std_in_pstream.pipe().close();
                is_std_in_pstream_closed = true;
            }
        }
    };
    auto read_out = [&std_out_pstream, &std_out_sstream]()
    {
        str buffer;
        while (not std_out_pstream.eof())
        {
            std::getline(std_out_pstream, buffer);
            std_out_sstream << buffer << std::endl;
        }
    };
    auto read_err = [&std_err_pstream, &std_err_sstream]()
    {
        str buffer;
        while (not std_err_pstream.eof())
        {
            std::getline(std_err_pstream, buffer);
            std_err_sstream << buffer << std::endl;
        }
    };

    std::future<void> in_writer = std::async(write_in);
    std::future<void> out_reader = std::async(read_out);
    std::future<void> err_reader = std::async(read_err);
    do
    {
        if (opt_time_limit.has_value() and get_ellapsed_time() - start_time > *opt_time_limit)
        {
            child_process.terminate();
            throw std::runtime_error("Timeout: " + label + " exceeded time limit.");
        }
        if (in_writer.wait_for(std::chrono::duration<double>(0.01)) == std::future_status::ready)
        {
            in_writer = std::async(write_in);
        }
        if (out_reader.wait_for(std::chrono::duration<double>(0.01)) == std::future_status::ready)
        {
            out_reader = std::async(read_out);
        }
        if (err_reader.wait_for(std::chrono::duration<double>(0.01)) == std::future_status::ready)
        {
            err_reader = std::async(read_err);
        }
    }
    while (child_process.running());
    out_reader.wait();
    err_reader.wait();

    if (not std_err_sstream.str().empty()) {std::cerr << std_err_sstream.str();}
    return std_out_sstream.str();
}

vec<str> split(const str &s, const str &delimiter)
{
    size_t cursor_position = 0;
    vec<str> splitted_s;
    while (true)
    {
        if (s.find(delimiter, cursor_position) == std::string::npos)
        {
            splitted_s.push_back(s.substr(cursor_position));
            break;
        }
        else
        {
            splitted_s.push_back(s.substr(cursor_position, s.find(delimiter, cursor_position) - cursor_position));
            cursor_position += splitted_s.back().size() + delimiter.length();
        }
    }
    return splitted_s;
}

FunctionsCache functions_cache;
FunctionsCache functions_storage;
