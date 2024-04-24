#include "./lmcut.hpp"

int Lmcut::operator[](const State &state) const
{
    static vec<bool> are_freed_actions ((task.actions().empty()? NONE: task.actions().back().id) + 4);
    static vec<Fact> actions_critical_predecessor ((task.actions().empty()? NONE: task.actions().back().id) + 4);
    static vec<set<Action>> facts_kept_successor_actions ((task.facts().empty()? NONE: task.facts().back().id) + 4);
    static vec<int> actions_achieved_number_of_facts ((task.actions().empty()? NONE: task.actions().back().id) + 4);
    static vec<int> actions_h_max_values ((task.actions().empty()? NONE: task.actions().back().id) + 4);
    Function this_function {&Lmcut::operator[], *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(state))
    {
        set_start_action(state);
        are_freed_actions.assign(are_freed_actions.size(), false);
        are_freed_actions[start_action] = true;
        are_freed_actions[final_action] = true;

        for (int i = 0;; i++)
        {
            actions_critical_predecessor.assign(actions_critical_predecessor.size(), {});
            facts_kept_successor_actions.assign(facts_kept_successor_actions.size(), {});

            actions_achieved_number_of_facts.assign(actions_achieved_number_of_facts.size(), 0);

            actions_h_max_values.assign(actions_h_max_values.size(), INFTY);

            vec<Fact> current_value_facts = {start_fact};
            vec<Fact> next_value_facts;
            int current_value = 0;
            set<Fact> already_processed_facts;

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
                        // TODO: Can't we just stop earlier? I have to verify.
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
                                if (are_freed_actions[action])
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

            vec<Fact> stack;
            set<Action> landmark;

            set<Fact> goal_zone;
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
                        if (are_freed_actions[action])
                        {
                            stack.push_back(actions_critical_predecessor[action]);
                        }
                    }
                }
            }

            set<Fact> initial_zone;
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
                are_freed_actions[action] = true;
            }
        }
    }
    return cache[state];
};
