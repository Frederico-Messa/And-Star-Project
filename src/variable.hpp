#pragma once
#include "./general.hpp"

class Fact;

class Variable : public Object
{
public:
    using Object::Object;

    str &name() const;
    vec<Fact> &facts() const;

    Variable(const str &name);

    friend std::ostream& operator<<(std::ostream &out, const Variable &self);
};
DEFINE_OBJECT_HASH(Variable);

#include "./fact.hpp"
