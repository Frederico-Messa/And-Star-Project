#pragma once
#include "./general.hpp"

class Task;
class Fact;
class PartialState;

class Action : public Object
{
public:
    using Object::Object;

    str &name() const;
    PartialState &precondition() const;
    vec<PartialState> &effects() const;
    int &cost() const;

    Action(const str &name, const PartialState &precondition, const vec<PartialState> &effects, int cost);

    friend std::ostream& operator<<(std::ostream &out, const Action &self);
};
DEFINE_OBJECT_HASH(Action);

#include "./task.hpp"
#include "./fact.hpp"
#include "./partial_state.hpp"
