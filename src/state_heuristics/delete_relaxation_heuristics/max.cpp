#include "./max.hpp"

int Max::operator[](const State &state) const
{
    static vec<bool> are_freed_actions ((task.actions().empty()? NONE: task.actions().back().id) + 4);
    static vec<int> actions_achieved_number_of_facts ((task.actions().empty()? NONE: task.actions().back().id) + 4);
    Function this_function {&Max::operator[], *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(state))
    {
        set_start_action(state);
        are_freed_actions.assign(are_freed_actions.size(), false);
        are_freed_actions[start_action] = true;
        are_freed_actions[final_action] = true;

        actions_achieved_number_of_facts.assign(actions_achieved_number_of_facts.size(), 0);

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
                    cache[state] = current_value;
                    break;
                }

                for (const Action &action: facts_successor_actions[fact])
                {
                    actions_achieved_number_of_facts[action]++;
                    if (actions_achieved_number_of_facts[action] == actions_predecessor_facts[action].size())
                    {
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
        }
    }
    return cache[state];
};
