#include "./ff.hpp"

int Ff::operator[](const State &state) const
{
    struct FactValuePair
    {
        Fact fact;
        int value;
    };

    struct FactValuePairOrdering
    {
        bool operator()(const FactValuePair &pair_1, const FactValuePair &pair_2) const
        {
            return pair_1.value > pair_2.value;
        }
    };

    Function this_function {&Ff::operator[], *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(state))
    {
        set_start_action(state);
        set<Action> freed_actions = {start_action, final_action};

        map<Action, int> actions_achieved_number_of_facts;

        map<Action, int> actions_h_add_values;
        int goal_h_add_value = 0;

        boost::heap::pairing_heap<FactValuePair, boost::heap::stable<true>, boost::heap::compare<FactValuePairOrdering>> queue;
        queue.push({start_fact, 0});
        set<Fact> already_processed_facts;

        while (not queue.empty())
        {
            Fact fact = queue.top().fact;
            int fact_h_add_value = queue.top().value;
            queue.pop();

            if (not already_processed_facts.contains(fact))
            {
                already_processed_facts.insert(fact);

                if (fact == final_fact)
                {
                    set<Action> achieved_actions;
                    set<Fact> achieved_facts;
                    vec<Fact> stack = {final_fact};
                    while (not stack.empty())
                    {
                        Fact fact = stack.back();
                        stack.pop_back();
                        if (not achieved_facts.contains(fact))
                        {
                            achieved_facts.insert(fact);

                            Action best_predecessor_action;
                            int best_predecessor_actions_effective_value = +INFTY;
                            for (const Action &action: facts_predecessor_actions[fact])
                            {
                                int action_effective_value = freed_actions.contains(action)? actions_h_add_values[action]: actions_h_add_values[action] + 1;
                                if (actions_h_add_values.contains(action) and action_effective_value < best_predecessor_actions_effective_value)
                                {
                                    best_predecessor_action = action;
                                    best_predecessor_actions_effective_value = action_effective_value;
                                }
                            }
                            achieved_actions.insert(best_predecessor_action);

                            for (const Fact &predecessor_fact: actions_predecessor_facts[best_predecessor_action])
                            {
                                stack.push_back(predecessor_fact);
                            }
                        }
                    }
                    cache[state] = achieved_actions.size();
                    break;
                }

                for (const Action &action: facts_successor_actions[fact])
                {
                    actions_achieved_number_of_facts[action]++;
                    actions_h_add_values[action] += fact_h_add_value;

                    if (actions_achieved_number_of_facts[action] == actions_predecessor_facts[action].size())
                    {
                        for (const Fact successor_fact: actions_successor_facts[action])
                        {
                            if (freed_actions.contains(action))
                            {
                                queue.push({successor_fact, actions_h_add_values[action]});
                            }
                            else
                            {
                                queue.push({successor_fact, actions_h_add_values[action] + 1});
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

