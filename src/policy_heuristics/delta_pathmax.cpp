#include "./delta_pathmax.hpp"

DeltaPathmax::DeltaPathmax(const Task &task, const State::Heuristic &state_heuristic) : Heuristic(task), state_heuristic(state_heuristic) {}

int DeltaPathmax::operator[](const Policy &policy) const
{
    Function this_function {&DeltaPathmax::operator[], *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(policy))
    {
        map<State, set<State>> reverse_links;

        for (const State &state: policy.domain_iterator())
        {
            for (const State &successor: state.get_successors(policy[state]))
            {
                reverse_links[successor].insert(state);
            }
        }

        auto state_heuristic_value_lt = [&](const State &state1, const State &state2)
        {
            return this->state_heuristic[state1] < this->state_heuristic[state2];
        };

        set<State> policy_outgoing_non_goal_states = policy.outgoing_non_goal_states(this->task.goal_condition());
        vec<State> policy_sorted_outgoing_non_goal_states = vec<State>(policy_outgoing_non_goal_states.begin(), policy_outgoing_non_goal_states.end());
        std::sort(policy_sorted_outgoing_non_goal_states.begin(), policy_sorted_outgoing_non_goal_states.end(), state_heuristic_value_lt);

        set<State> closed_domain_states;
        auto close_ancestor_states_of_state = [&](const State &state)
        {
            vec<State> stack = {state};
            while (not stack.empty())
            {
                State cursor_state = stack.back();
                stack.pop_back();
                for (const State &ancestor_state: reverse_links[cursor_state])
                {
                    if (not closed_domain_states.contains(ancestor_state))
                    {
                        closed_domain_states.insert(ancestor_state);
                        stack.push_back(ancestor_state);
                    }
                }
            }
        };

        for (const std::pair<State, set<State>> &pair: reverse_links)
        {
            if (pair.first.is_goal(this->task.goal_condition()))
            {
                State outgoing_goal_state = pair.first;
                close_ancestor_states_of_state(outgoing_goal_state);
            }
        }

        int count = policy.size() + policy_outgoing_non_goal_states.size();
        int delta = count;
        int i = 0;
        for (const State &outgoing_non_goal_state: policy_sorted_outgoing_non_goal_states)
        {
            delta = std::max(delta, count - (int(closed_domain_states.size()) + ++i) + this->state_heuristic[outgoing_non_goal_state]);
            close_ancestor_states_of_state(outgoing_non_goal_state);
        }

        cache[policy] = delta;
    }
    return cache[policy];
};
