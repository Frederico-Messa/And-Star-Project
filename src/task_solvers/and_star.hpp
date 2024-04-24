#pragma once

#include "../task.hpp"
class AndStar : public Task::Solver
{
public:
    enum SignaturingMethod {ID, LANES, IN_OUT, OUT};
    enum DeadlockHandling {EARLY_DETECT_AND_PRUNE, CHECK_WHEN_CLOSED, TRY_TO_FIX_WHEN_CLOSED};

    const Policy::Heuristic &policy_heuristic;
    const State::Heuristic &state_heuristic;
    const std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)> &is_policy_worse_than;
    const SignaturingMethod &signaturing_method;
    const DeadlockHandling &deadlock_handling;
    int64_t number_of_generated_policies = 0;
    int64_t number_of_inserted_policies = 0;
    int64_t number_of_removed_policies = 0;
    int64_t number_of_expanded_policies = 0;

    AndStar(const Policy::Heuristic &policy_heuristic, const State::Heuristic &state_heuristic, const std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)> &is_policy_worse_than, const SignaturingMethod &signaturing_method, const DeadlockHandling &deadlock_handling);

    Policy get_solution(const Task &task);
};
