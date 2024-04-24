#pragma once

#include "../policy_heuristic.cpp"

class StrongNearest : public PolicyHeuristic
{
public:
    int get_heuristic_value(const Policy &policy, const PartialState &goal_condition, const StateHeuristic &state_heuristic) const
    {
        int count = policy.mappings().size() + policy.outgoing_non_goal_states(goal_condition).size();

        if (policy.does_reach_the_goal(goal_condition))
        {
            return count;
        }
        else
        {
            int minimal_outgoing_state_h_value = +INFTY;
            for (const State &state: policy.outgoing_non_goal_states(goal_condition))
            {
                minimal_outgoing_state_h_value = std::min(minimal_outgoing_state_h_value, state_heuristic.get_heuristic_value(state, goal_condition));
            }
            return count + (minimal_outgoing_state_h_value - 1);
        }
    };
};
