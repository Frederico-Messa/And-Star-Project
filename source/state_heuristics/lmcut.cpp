#pragma once

#include "../state_heuristic.cpp"

class Lmcut : public StateHeuristic
{
public:
    using StateHeuristic::StateHeuristic;

    static std::unordered_map<State, int> cache;

    int &get_heuristic_value(const State &state, const PartialState &goal_condition) const
    {
        if (not cache.contains(state))
        {
            set_start_action(state);
            std::unordered_set<Action> freed_actions = {start_action, final_action};

            for (int i = 0;; i++)
            {
                std::unordered_map<Action, Fact> actions_critical_predecessor;
                std::unordered_map<Fact, std::unordered_set<Action>> facts_kept_successor_actions;

                std::unordered_map<Action, int> actions_achieved_number_of_facts;

                std::unordered_map<Action, int> actions_h_max_values;

                std::vector<Fact> current_value_facts = {start_fact};
                std::vector<Fact> next_value_facts;
                int current_value = 0;
                std::unordered_set<Fact> already_processed_facts;

                while (not current_value_facts.empty() or not next_value_facts.empty())
                {
                    if (current_value_facts.empty())
                    {
                        current_value_facts.swap(next_value_facts);
                        current_value++;
                    }

                    Fact fact = current_value_facts.back();
                    current_value_facts.pop_back();
                    
                    if (not already_processed_facts.contains(fact))
                    {
                        already_processed_facts.insert(fact);

                        if (fact == final_fact)
                        {
                            // TODO: Do we really need to continue?
                        }

                        for (const Action &action: facts_successor_actions[fact])
                        {
                            actions_achieved_number_of_facts[action]++;
                            if (actions_achieved_number_of_facts[action] == actions_predecessor_facts[action].size())
                            {
                                actions_h_max_values[action] = current_value;
                                actions_critical_predecessor[action] = fact;
                                facts_kept_successor_actions[fact].insert(action);
                                for (const Fact successor_fact: actions_successor_facts[action])
                                {
                                    if (freed_actions.contains(action))
                                    {
                                        current_value_facts.push_back(successor_fact);
                                    }
                                    else
                                    {
                                        next_value_facts.push_back(successor_fact);
                                    }
                                }
                            }
                        }
                    }
                }

                if (not already_processed_facts.contains(final_fact))
                {
                    cache[state] = +INFTY;
                    break;
                }
                if (actions_h_max_values[final_action] == 0)
                {
                    cache[state] = i;
                    break;
                }

                std::vector<Fact> stack;
                std::unordered_set<Action> landmark;

                std::unordered_set<Fact> goal_zone;
                stack.push_back(final_fact);
                while (not stack.empty())
                {
                    Fact fact = stack.back();
                    stack.pop_back();
                    if (not goal_zone.contains(fact))
                    {
                        goal_zone.insert(fact);
                        for (const Action &action: facts_predecessor_actions[fact])
                        {
                            if (freed_actions.contains(action))
                            {
                                stack.push_back(actions_critical_predecessor[action]);
                            }
                        }
                    }
                }

                std::unordered_set<Fact> initial_zone;
                stack.push_back(start_fact);
                while (not stack.empty())
                {
                    Fact fact = stack.back();
                    stack.pop_back();
                    if (not initial_zone.contains(fact))
                    {
                        initial_zone.insert(fact);
                        for (const Action &action: facts_kept_successor_actions[fact])
                        {
                            for (const Fact &successor_fact: actions_successor_facts[action])
                            {
                                if (goal_zone.contains(successor_fact))
                                {
                                    landmark.insert(action);
                                }
                                else
                                {
                                    stack.push_back(successor_fact);
                                }
                            }
                        }
                    }
                }

                for (const Action &action: landmark)
                {
                    freed_actions.insert(action);
                }
            }
        }
        return cache[state];
    };
};

std::unordered_map<State, int> Lmcut::cache;
