#pragma once
#include "./general.cpp"

#include "./state.cpp"
#include "./partial_state.cpp"
#include "./fact.cpp"
#include "./action.cpp"

class StateHeuristic : public Object
{
public:
    using Object::Object;

    static std::unordered_map<Fact, std::unordered_set<Action>> facts_successor_actions;
    static std::unordered_map<Fact, std::unordered_set<Action>> facts_predecessor_actions;
    static std::unordered_map<Action, std::unordered_set<Fact>> actions_successor_facts;
    static std::unordered_map<Action, std::unordered_set<Fact>> actions_predecessor_facts;
    static Fact start_fact;
    static Fact final_fact;
    static Action start_action;
    static Action final_action;

    StateHeuristic(const PartialState &goal_condition, const std::vector<Action> &actions)
    {
        start_fact.id = -2;
        final_fact.id = -3;
        start_action.id = -2;
        final_action.id = -3;

        facts_successor_actions[start_fact].insert(start_action);
        facts_predecessor_actions[final_fact].insert(final_action);
        actions_successor_facts[final_action].insert(final_fact);
        actions_predecessor_facts[start_action].insert(start_fact);

        for (const Action &action: actions)
        {
            for (const Fact &fact: action.precondition().true_facts())
            {
                if (not fact.is_none())
                {
                    facts_successor_actions[fact].insert(action);
                    actions_predecessor_facts[action].insert(fact);
                }
            }
            if (actions_predecessor_facts[action].empty())
            {
                facts_successor_actions[start_fact].insert(action);
                actions_predecessor_facts[action].insert(start_fact);
            }

            for (const PartialState &effect: action.effects())
            {
                for (const Fact &fact: effect.true_facts())
                {
                    if (not fact.is_none())
                    {
                        facts_predecessor_actions[fact].insert(action);
                        actions_successor_facts[action].insert(fact);
                    }
                }
            }
        }

        for (const Fact &fact: goal_condition.true_facts())
        {
            if (not fact.is_none())
            {
                facts_successor_actions[fact].insert(final_action);
                actions_predecessor_facts[final_action].insert(fact);
            }
        }
    }

    static void set_start_action(const State &state)
    {
        for (const Fact &fact: actions_successor_facts[start_action])
        {
            facts_predecessor_actions[fact].erase(start_action);
        }
        actions_successor_facts[start_action].clear();

        for (const Fact &fact: state.true_facts())
        {
            facts_predecessor_actions[fact].insert(start_action);
            actions_successor_facts[start_action].insert(fact);
        }
    }

    virtual int &get_heuristic_value(const State &state, const PartialState &goal_condition) const = 0;
};

std::unordered_map<Fact, std::unordered_set<Action>> StateHeuristic::facts_successor_actions;
std::unordered_map<Fact, std::unordered_set<Action>> StateHeuristic::facts_predecessor_actions;
std::unordered_map<Action, std::unordered_set<Fact>> StateHeuristic::actions_successor_facts;
std::unordered_map<Action, std::unordered_set<Fact>> StateHeuristic::actions_predecessor_facts;
Fact StateHeuristic::start_fact;
Fact StateHeuristic::final_fact;
Action StateHeuristic::start_action;
Action StateHeuristic::final_action;
