#pragma once
#include "./general.hpp"

class Fact;
class Variable;
class Action;
class PartialState;
class State;
class Policy;

class Task : public Object
{
public:
    using Object::Object;

    enum SymmetriesMethod {NO_SYMS, GREEDY_SYMS, PERFECT_SYMS};

    class Solver;

    vec<Variable> &variables() const;
    vec<Fact> &facts() const;
    State &initial_state() const;
    PartialState &goal_condition() const;
    vec<str> &action_classes() const;
    vec<Action> &actions() const;

    SymmetriesMethod symmetries_method;

    Task(const str &domain_file_name, const str &task_file_name);

    set<Fact> get_canonical_facts_set(const set<Fact> &facts_set) const;
    void compute_gagg(const opt<double> &opt_time_limit = std::nullopt);
    void compute_sgs(const opt<double> &opt_time_limit = std::nullopt);

    static opt<vec<str>> opt_gagg_str;
    static opt<vec<map<Fact, Fact>>> opt_gagg;
    static opt<set<Fact>> opt_sgs_base_facts;
    static opt<map<Fact, vec<map<Fact, Fact>>>> opt_sgs_inverse_transversals;
    static opt<vec<Fact>> opt_sgs_stabilizing_order_of_facts;
};
DEFINE_OBJECT_HASH(Task);

class Task::Solver
{
public:
    virtual Policy get_solution(const Task &task) = 0; // TODO: I think it should be a const method, but currently it is impossible.
};

#include "./fact.hpp"
#include "./variable.hpp"
#include "./action.hpp"
#include "./partial_state.hpp"
#include "./state.hpp"
#include "./policy.hpp"
