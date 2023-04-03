#pragma once

#include "../state_heuristic.cpp"

class Star : public StateHeuristic
{
public:
    static std::unordered_map<State, int> cache;

    Star(const State &initial_state, const PartialState &goal_condition, const std::vector<Action> &actions) : StateHeuristic(goal_condition, actions)
    {
        std::unordered_map<State, std::vector<State>> reverse_edges;
        std::vector<State> stack;
        std::unordered_set<State> non_goal_states;
        std::unordered_set<State> goal_states;

        stack.push_back(initial_state);
        while (not stack.empty())
        {
            State state = stack.back();
            stack.pop_back();
            for (const Action &action: state.get_applicable_actions(actions))
            {
                for (const State &succesor_state: state.get_successors(action))
                {
                    reverse_edges[succesor_state].push_back(state);
                    if (succesor_state.is_goal(goal_condition))
                    {
                        goal_states.insert(succesor_state);
                    }
                    else
                    {
                        if (not non_goal_states.contains(succesor_state))
                        {
                            stack.push_back(succesor_state);
                            non_goal_states.insert(succesor_state);
                        }
                    }
                }
            }
        }

        non_goal_states.clear();

        std::vector<State> states_at_current_depth;
        std::vector<State> states_at_next_depth;
        int current_depth = 0;

        for (const State &state: goal_states)
        {
            states_at_current_depth.push_back(state);
            cache[state] = 0;
        }

        while (not (states_at_current_depth.empty() and states_at_next_depth.empty()))
        {
            if (states_at_current_depth.empty())
            {
                current_depth++;
                states_at_current_depth.swap(states_at_next_depth);
            }
            State state = states_at_current_depth.back();
            states_at_current_depth.pop_back();
            for (const State &successor_state: reverse_edges[state])
            {
                if (not cache.contains(successor_state))
                {
                    states_at_next_depth.push_back(successor_state);
                    cache[successor_state] = current_depth + 1;
                }
            }
        }
    }

    int &get_heuristic_value(const State &state, const PartialState &goal_condition) const
    {
        if (not cache.contains(state))
        {
            cache[state] = +INFTY;
        }
        return cache[state];
    };
};

std::unordered_map<State, int> Star::cache;
