#include "./delete_relaxation_heuristic.hpp"

void DeleteRelaxationHeuristic::set_start_action(const State &state)
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

DeleteRelaxationHeuristic::DeleteRelaxationHeuristic(const Task &task) : Heuristic(task)
{
    facts_successor_actions = vec<set<Action>>((task.facts().empty()? NONE: task.facts().back().id) + 4);
    facts_predecessor_actions = vec<set<Action>>((task.facts().empty()? NONE: task.facts().back().id) + 4);
    actions_successor_facts = vec<set<Fact>>((task.actions().empty()? NONE: task.actions().back().id) + 4);
    actions_predecessor_facts = vec<set<Fact>>((task.actions().empty()? NONE: task.actions().back().id) + 4);

    start_fact.id = -2;
    final_fact.id = -3;
    start_action.id = -2;
    final_action.id = -3;

    facts_successor_actions[start_fact].insert(start_action);
    facts_predecessor_actions[final_fact].insert(final_action);
    actions_successor_facts[final_action].insert(final_fact);
    actions_predecessor_facts[start_action].insert(start_fact);

    for (const Action &action: task.actions())
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

    for (const Fact &fact: task.goal_condition().true_facts())
    {
        if (not fact.is_none())
        {
            facts_successor_actions[fact].insert(final_action);
            actions_predecessor_facts[final_action].insert(fact);
        }
    }
}

vec<set<Action>> DeleteRelaxationHeuristic::facts_successor_actions;
vec<set<Action>> DeleteRelaxationHeuristic::facts_predecessor_actions;
vec<set<Fact>> DeleteRelaxationHeuristic::actions_successor_facts;
vec<set<Fact>> DeleteRelaxationHeuristic::actions_predecessor_facts;
Fact DeleteRelaxationHeuristic::start_fact;
Fact DeleteRelaxationHeuristic::final_fact;
Action DeleteRelaxationHeuristic::start_action;
Action DeleteRelaxationHeuristic::final_action;
