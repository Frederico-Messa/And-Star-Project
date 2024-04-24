#include "./state.hpp"

bool &State::is_goal(const PartialState &goal_condition) const
{
    if (not are_states_goal.contains(this->id))
    {
        are_states_goal[this->id] = this->does_model(goal_condition);
    }
    return are_states_goal[this->id];
}

vec<Action> &State::get_applicable_actions(const vec<Action> &actions) const
{
    if (not states_applicable_actionss.contains(this->id))
    {
        vec<Action> applicable_actions;
        for (const Action &action: actions)
        {
            if (this->can_receive_action(action))
            {
                applicable_actions.push_back(action);
            }
        }
        states_applicable_actionss[this->id] = applicable_actions;
    }
    return states_applicable_actionss[this->id];
}

bool State::can_receive_action(const Action &action) const
{
    return this->does_model(action.precondition());
}

vec<State> &State::get_successors(const Action &action) const
{
    if (not states_actions_successor_statess.contains(this->id) or not states_actions_successor_statess[this->id].contains(action.id))
    {
        vec<State> successors;
        for (const PartialState &effect: action.effects())
        {
            successors.push_back(this->get_successor(effect));
        }
        states_actions_successor_statess[this->id][action.id] = successors;
    }
    return states_actions_successor_statess[this->id][action.id];
}

State State::get_successor(const PartialState &effect) const
{
    vec<Fact> successor_true_facts = this->true_facts();
    mpz_class successor_hash = this->hash();
    int n = successor_true_facts.size();
    for (int i = 0; i < n; i++)
    {
        if (not effect.true_facts()[i].is_none() and not this->true_facts()[i].is_none())
        {
            successor_true_facts[i] = effect.true_facts()[i];
            successor_hash += successor_true_facts[i].hash() - this->true_facts()[i].hash();
        }
    }
    return State(successor_true_facts, successor_hash);
}

State State::get_projection(const vec<bool> &mask) const
{
    vec<Fact> projection_true_facts;
    int n = mask.size();
    for (int i = 0; i < n; i++)
    {
        if (mask[i])
        {
            projection_true_facts.push_back(this->true_facts()[i]);
        }
        else
        {
            projection_true_facts.emplace_back();
        }
    }
    return State(projection_true_facts);
}

State State::canonized(const Task &task) const
{
    Function this_function {&State::canonized, *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(task))
    {
        set<Fact> canonical_set = task.get_canonical_facts_set({this->true_facts().begin(), this->true_facts().end()});
        vec<Fact> sorted_canonical_set;
        for (const Variable &variable: task.variables())
        {
            for (const Fact &fact: variable.facts())
            {
                if (canonical_set.contains(fact))
                {
                    sorted_canonical_set.push_back(fact);
                }
            }
        }
        cache[task] = {sorted_canonical_set};
    }
    return cache[task];
}

map<State::Id, bool> State::are_states_goal;
map<State::Id, vec<Action>> State::states_applicable_actionss;
map<State::Id, map<int64_t, vec<State>>> State::states_actions_successor_statess;

State::Heuristic::Heuristic(const Task &task) : task(task)
{
}

// TODO: Filter successors repetitions
