#include "./general.hpp"

#include "./task.hpp"
#include "./policy_heuristics/count.hpp"
#include "./policy_heuristics/nearest.hpp"
#include "./policy_heuristics/delta_nearest.hpp"
#include "./policy_heuristics/delta_pathmax.hpp"
#include "./state_heuristics/blind.hpp"
#include "./state_heuristics/delete_relaxation_heuristics/max.hpp"
#include "./state_heuristics/delete_relaxation_heuristics/add.hpp"
#include "./state_heuristics/delete_relaxation_heuristics/ff.hpp"
#include "./state_heuristics/delete_relaxation_heuristics/lmcut.hpp"
#include "./state_heuristics/star.hpp"
#include "./task_solvers/and_star.hpp"

void print_end(const Task &task, const str &termination, const opt<Policy> &opt_solution, const AndStar &and_star, const str &domain_file_name, const str &task_file_name, const str &ip_solver_label)
{
    std::cout << std::endl;
    std::cout << "Termination: " << termination << std::endl;
    std::cout << "Final Memory Usage: " << get_memory_usage() << std::endl;
    std::cout << "Total Elapsed Time: " << get_ellapsed_time() << std::endl;
    std::cout << "Number of generated policies: " << and_star.number_of_generated_policies << std::endl;
    std::cout << "Number of inserted policies: " << and_star.number_of_inserted_policies << std::endl;
    std::cout << "Number of removed policies: " << and_star.number_of_removed_policies << std::endl;
    std::cout << "Number of expanded policies: " << and_star.number_of_expanded_policies << std::endl;

    if (opt_solution.has_value())
    {
        std::cout << std::endl;
        std::cout << "A Solution Policy:" << std::endl;
        std::cout << *opt_solution << std::endl;
        std::cout << "Size: " << opt_solution->size() << std::endl;

        str compressed_solution_in_prp_str_format = opt_solution->compute_and_print_compressed_version(task, ip_solver_label);
        std::cout << std::endl;

        std::cout << "Validating..." << std::endl;
        str validate_output = get_output("validate", "python3 ./dep/validator/validator.py " + domain_file_name + " " + task_file_name, compressed_solution_in_prp_str_format);
        assert(validate_output == "True\n\n" or validate_output == "False\n\n");
        if (validate_output.starts_with("True"))
        {
            std::cout << "Validated!" << std::endl;
        }
        else
        {
            throw std::logic_error("Generated solution was not validated.");
        }
    }
}

int main(int argc, char** argv)
{
    assert(argc == 9 or argc == 10);

    Task task = Task(str(argv[1]), str(argv[2]));

    State::Heuristic* state_heuristic_ptr;
    if (str(argv[4]) == "blind")
    {
        state_heuristic_ptr = new Blind(task);
    }
    else
    if (str(argv[4]) == "max")
    {
        state_heuristic_ptr = new Max(task);
    }
    else
    if (str(argv[4]) == "add")
    {
        state_heuristic_ptr = new Add(task);
    }
    else
    if (str(argv[4]) == "ff")
    {
        state_heuristic_ptr = new Ff(task);
    }
    else
    if (str(argv[4]) == "lmcut")
    {
        state_heuristic_ptr = new Lmcut(task);
    }
    else
    if (str(argv[4]) == "star")
    {
        state_heuristic_ptr = new Star(task);
    }
    else
    {
        throw std::domain_error("Invalid state heuristic.");
    }

    Policy::Heuristic* policy_heuristic_ptr;
    if (str(argv[3]) == "count")
    {
        policy_heuristic_ptr = new Count(task);
    }
    else
    if (str(argv[3]) == "nearest")
    {
        policy_heuristic_ptr = new Nearest(task, *state_heuristic_ptr);
    }
    else
    if (str(argv[3]) == "delta-nearest")
    {
        policy_heuristic_ptr = new DeltaNearest(task, *state_heuristic_ptr);
    }
    else
    if (str(argv[3]) == "delta-pathmax")
    {
        policy_heuristic_ptr = new DeltaPathmax(task, *state_heuristic_ptr);
    }
    else
    {
        throw std::domain_error("Invalid policy heuristic.");
    }

    std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)>* is_policy_worse_than_ptr;
    if (str(argv[5]) == "best-first")
    {
        is_policy_worse_than_ptr = new std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)>
        {
            [](const Policy &policy_1, const Policy &policy_2, const Policy::Heuristic &policy_heuristic, const State::Heuristic &state_heuristic)
            {
                if (policy_heuristic[policy_1] != policy_heuristic[policy_2])
                {
                    return policy_heuristic[policy_1] > policy_heuristic[policy_2];
                }

                return policy_1.size() < policy_2.size();
            }
        };
    }
    else
    if (str(argv[5]) == "2-weighted-first")
    {
        is_policy_worse_than_ptr = new std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)>
        {
            [](const Policy &policy_1, const Policy &policy_2, const Policy::Heuristic &policy_heuristic, const State::Heuristic &state_heuristic)
            {
                if (2 * policy_heuristic[policy_1] - policy_1.size() != 2 * policy_heuristic[policy_2] - policy_2.size())
                {
                    return 2 * policy_heuristic[policy_1] - policy_1.size() > 2 * policy_heuristic[policy_2] - policy_2.size();
                }

                return policy_1.size() < policy_2.size();
            }
        };
    }
    else
    if (str(argv[5]) == "greedy-first")
    {
        is_policy_worse_than_ptr = new std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)>
        {
            [](const Policy &policy_1, const Policy &policy_2, const Policy::Heuristic &policy_heuristic, const State::Heuristic &state_heuristic)
            {
                if (policy_heuristic[policy_1] - policy_1.size() != policy_heuristic[policy_2] - policy_2.size())
                {
                    return policy_heuristic[policy_1] - policy_1.size() > policy_heuristic[policy_2] - policy_2.size();
                }

                return policy_1.size() < policy_2.size();
            }
        };
    }
    else
    {
        throw std::domain_error("Invalid policy ordering.");
    }

    AndStar::SignaturingMethod and_star_signaturing_method;
    if (str(argv[6]) == "id")
    {
        and_star_signaturing_method = AndStar::SignaturingMethod::ID;
    }
    else
    if (str(argv[6]) == "lanes")
    {
        and_star_signaturing_method = AndStar::SignaturingMethod::LANES;
    }
    else
    if (str(argv[6]) == "in-out")
    {
        and_star_signaturing_method = AndStar::SignaturingMethod::IN_OUT;
    }
    else
    if (str(argv[6]) == "out")
    {
        and_star_signaturing_method = AndStar::SignaturingMethod::OUT;
    }
    else
    {
        throw std::domain_error("Invalid signaturing method.");
    }

    if (str(argv[7]) == "true" or str(argv[7]) == "greedy")
    {
        if (str(argv[6]) == "id" or str(argv[6]) == "lanes" or str(argv[6]) == "in-out")
        {
            throw std::domain_error("State-space symmetries was only tested with frontier equivalence pruning.");
        }
        try
        {
            task.compute_gagg(5);
            if (task.opt_gagg.has_value() and not task.opt_gagg->empty())
            {
                if (str(argv[7]) == "true")
                {
                    task.symmetries_method = Task::SymmetriesMethod::PERFECT_SYMS;
                    task.compute_sgs(15);
                }
                if (str(argv[7]) == "greedy")
                {
                    task.symmetries_method = Task::SymmetriesMethod::GREEDY_SYMS;
                }
            }
        }
        catch(const std::exception& e)
        {
            std::cerr << e.what() << std::endl;
            assert(str(e.what()) == "Timeout: dreadnaut exceeded time limit.");
        }
    }
    else
    if (str(argv[7]) == "false")
    {
    }
    else
    {
        throw std::domain_error("Invalid symmetries-dectection activation choice.");
    }

    AndStar::DeadlockHandling and_star_deadlock_handling;
    if (str(argv[8]) == "true")
    {
        and_star_deadlock_handling = AndStar::DeadlockHandling::EARLY_DETECT_AND_PRUNE;
    }
    else
    if (str(argv[8]) == "false")
    {
        and_star_deadlock_handling = AndStar::DeadlockHandling::CHECK_WHEN_CLOSED;
    }
    else
    if (str(argv[8]) == "fix")
    {
        and_star_deadlock_handling = AndStar::DeadlockHandling::TRY_TO_FIX_WHEN_CLOSED;
    }
    else
    {
        throw std::domain_error("Invalid deadlock handling.");
    }

    str ip_solver_label;
    if (argc == 10)
    {
        ip_solver_label = str(argv[9]);
    }
    else
    {
        ip_solver_label = "PULP_CBC_CMD";
    }

    AndStar and_star = AndStar(*policy_heuristic_ptr, *state_heuristic_ptr, *is_policy_worse_than_ptr, and_star_signaturing_method, and_star_deadlock_handling);
    Policy solution = and_star.get_solution(task);

    print_end(task, "Solved.", {solution}, and_star, str(argv[1]), str(argv[2]), ip_solver_label);
    return 0;
}
