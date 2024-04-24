#include "./nearest.hpp"

Nearest::Nearest(const Task &task, const State::Heuristic &state_heuristic) : Heuristic(task), state_heuristic(state_heuristic) {}

int Nearest::operator[](const Policy &policy) const
{
    Function this_function {&Nearest::operator[], *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(policy))
    {
        int count = policy.size() + policy.outgoing_non_goal_states(this->task.goal_condition()).size();

        if (policy.does_reach_the_goal(this->task.goal_condition()))
        {
            cache[policy] = count;
        }
        else
        {
            int minimal_outgoing_state_h_value = +INFTY;
            for (const State &state: policy.outgoing_non_goal_states(this->task.goal_condition()))
            {
                minimal_outgoing_state_h_value = std::min(minimal_outgoing_state_h_value, this->state_heuristic[state]);
            }
            cache[policy] = count + (minimal_outgoing_state_h_value - 1);
        }
    }
    return cache[policy];
};
