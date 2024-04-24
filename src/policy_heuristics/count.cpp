#pragma once

#include "../policy_heuristic.cpp"

class StrongCount : public PolicyHeuristic
{
public:
    int get_heuristic_value(const Policy &policy, const PartialState &goal_condition, const StateHeuristic &state_heuristic) const
    {
        return policy.mappings().size() + policy.outgoing_non_goal_states(goal_condition).size();
    };
};
