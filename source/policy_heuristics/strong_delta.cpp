#pragma once

#include "../policy_heuristic.cpp"

class StrongDelta : public PolicyHeuristic
{
public:
    int get_heuristic_value(const Policy &policy, const PartialState &goal_condition, const StateHeuristic &state_heuristic) const
    {
        std::vector<int> states_heuristic_values;
        for (const std::pair<State, Action> &pair: policy.mappings())
        {
            states_heuristic_values.push_back(state_heuristic.get_heuristic_value(pair.first, goal_condition));
        }
        for (const State &state: policy.outgoing_non_goal_states(goal_condition))
        {
            states_heuristic_values.push_back(state_heuristic.get_heuristic_value(state, goal_condition));
        }

        std::sort(states_heuristic_values.begin(), states_heuristic_values.end(), std::greater<int>());

        int delta = -INFTY;
        int i = 0;
        for (const int &state_heuristic_value: states_heuristic_values)
        {
            delta = std::max(delta, state_heuristic_value + i++);
        }

        return delta;
    };
};
