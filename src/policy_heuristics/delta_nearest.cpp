#include "./delta_nearest.hpp"

DeltaNearest::DeltaNearest(const Task &task, const State::Heuristic &state_heuristic) : Heuristic(task), state_heuristic(state_heuristic) {}

int DeltaNearest::operator[](const Policy &policy) const
{
    Function this_function {&DeltaNearest::operator[], *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(policy))
    {
        int count = policy.size() + policy.outgoing_non_goal_states(this->task.goal_condition()).size();

        int minimal_outgoing_state_h_value = policy.does_reach_the_goal(this->task.goal_condition())? 0: +INFTY;

        vec<int> states_heuristic_values;
        states_heuristic_values.reserve(count);
        for (const State &state: policy.domain_iterator())
        {
            states_heuristic_values.push_back(this->state_heuristic[state]);
        }
        for (const State &state: policy.outgoing_non_goal_states(this->task.goal_condition()))
        {
            states_heuristic_values.push_back(this->state_heuristic[state]);
            minimal_outgoing_state_h_value = std::min(minimal_outgoing_state_h_value, this->state_heuristic[state]);
        }

        std::sort(states_heuristic_values.begin(), states_heuristic_values.end(), std::greater<int>());

        int delta = -INFTY;
        int i = 0;
        for (const int &state_heuristic_value: states_heuristic_values)
        {
            delta = std::max(delta, state_heuristic_value + i++);
        }

        cache[policy] = std::max(delta, count + std::max(0, minimal_outgoing_state_h_value - 1));
    }
    return cache[policy];
};
