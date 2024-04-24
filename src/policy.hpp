#pragma once
#include "./general.hpp"

class Task;
class PartialState;
class State;
class Action;

class Policy : public Object
{
public:
    using Object::Object;

    class DomainIterator;
    class Heuristic;

    State &state() const;
    Action &action() const;
    Policy &parent_policy() const;

    Policy(const State &state, const Action &action, const Policy &parent_policy);

    DomainIterator domain_iterator() const;
    Action &operator[](const State &state) const;
    bool contains(const State &state) const;
    size_t size() const;
    set<State> outgoing_non_goal_states(const PartialState &goal_condition) const;
    bool does_reach_the_goal(const PartialState &goal_condition) const;
    Policy with_fixed_properness(const Task &task) const;
    str compute_and_print_compressed_version(const Task &task, const str &ip_solver_label) const;
    friend std::ostream& operator<<(std::ostream &out, const Policy &self);
};
DEFINE_OBJECT_HASH(Policy);

class Policy::DomainIterator
{
public:
    Policy policy;

    DomainIterator(const Policy &policy);
    DomainIterator begin() const;
    DomainIterator end() const;
    DomainIterator &operator++();
    bool operator!=(const DomainIterator &other) const;
    State operator*() const;
};

class Policy::Heuristic : public Object
{
public:
    const Task &task;

    Heuristic(const Task &task);

    virtual int operator[](const Policy &policy) const = 0;
};

#include "./task.hpp"
#include "./partial_state.hpp"
#include "./state.hpp"
#include "./action.hpp"
