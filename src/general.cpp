#pragma once

#include <iostream>
#include <fstream>
#include <chrono>
#include <string>
#include <cassert>
#include <optional>
#include <vector>
#include <tuple>
#include <unordered_set>
#include <unordered_map>
#include <bits/stdc++.h>
#include <boost/heap/pairing_heap.hpp>
#include <boost/bimap.hpp>

#define NONE -1
#define INFTY INT_MAX

class Object
{
public:    
    // typedef int64_t Id;
    // static Id last_used_id;
    // Id id;
    static int64_t last_used_id;
    int64_t id;

    Object()
    {
        this->id = NONE;
    }
    
    bool is_none() const
    {
        return this->id == NONE;
    };

    bool operator==(const Object &other) const
    {
        return this->id == other.id;
    }

    bool operator!=(const Object &other) const
    {
        return this->id != other.id;
    }
};

// Object::Id Object::last_used_id = NONE;
int64_t Object::last_used_id = NONE;

#define DEFINE_OBJECT_HASH(Object)\
namespace std\
{\
    template<>\
    struct hash<Object>\
    {\
        std::size_t operator()(const Object& object) const\
        {\
            return object.id;\
        }\
    };\
}

DEFINE_OBJECT_HASH(Object);

#include <gmpxx.h>
template<>
struct std::hash<mpz_class>
{
    size_t operator()(const mpz_class &x) const
    {
        return x.get_ui();
    }
};

std::chrono::system_clock::time_point start_time = std::chrono::system_clock::now();
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
