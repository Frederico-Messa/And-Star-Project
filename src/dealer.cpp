#include "./general.hpp"

#include "./action.hpp"
#include "./fact.hpp"
#include "./partial_state.hpp"
#include "./policy.hpp"
#include "./state.hpp"
#include "./task.hpp"
#include "./variable.hpp"

map<Action, str> actions_names;
map<Action, PartialState> actions_preconditions;
map<Action, vec<PartialState>> actions_effectss;
map<Action, int> actions_costs;

map<Fact, Variable> facts_variables;
map<Fact, str> facts_values;
map<Fact, mpz_class> facts_hashes;

vec<State> policies_states;
vec<Action> policies_actions;
vec<Policy> policies_parents_policies;

map<Task, vec<Variable>> tasks_variabless;
map<Task, vec<Fact>> tasks_factss;
map<Task, State> tasks_initial_states;
map<Task, PartialState> tasks_goal_conditions;
map<Task, vec<str>> tasks_action_classess;
map<Task, vec<Action>> tasks_actionss;

map<Variable, str> variables_names;
map<Variable, vec<Fact>> variables_factss;


str &Action::name() const
{
    return actions_names[*this];
};

PartialState &Action::precondition() const
{
    return actions_preconditions[*this];
};

vec<PartialState> &Action::effects() const
{
    return actions_effectss[*this];
};

int &Action::cost() const
{
    return actions_costs[*this];
};


Variable &Fact::variable() const
{
    return facts_variables[*this];
};

str &Fact::value() const
{
    return facts_values[*this];
};

mpz_class &Fact::hash() const
{
    return facts_hashes[*this];
};


State &Policy::state() const
{
    if (policies_states.size() <= this->id)
    {
        policies_states.resize(this->id + 1);
    }
    return policies_states[this->id];
};

Action &Policy::action() const
{
    if (policies_actions.size() <= this->id)
    {
        policies_actions.resize(this->id + 1);
    }
    return policies_actions[this->id];
};

Policy &Policy::parent_policy() const
{
    if (policies_parents_policies.size() <= this->id)
    {
        policies_parents_policies.resize(this->id + 1);
    }
    return policies_parents_policies[this->id];
};


vec<Variable> &Task::variables() const
{
    return tasks_variabless[*this];
};

vec<Fact> &Task::facts() const
{
    return tasks_factss[*this];
};

State &Task::initial_state() const
{
    return tasks_initial_states[*this];
};

PartialState &Task::goal_condition() const
{
    return tasks_goal_conditions[*this];
};

vec<str> &Task::action_classes() const
{
    return tasks_action_classess[*this];
};

vec<Action> &Task::actions() const
{
    return tasks_actionss[*this];
};


str &Variable::name() const
{
    return variables_names[*this];
};

vec<Fact> &Variable::facts() const
{
    return variables_factss[*this];
};
