#pragma once

#include "../policy.hpp"
class Count : public Policy::Heuristic
{
public:
    using Policy::Heuristic::Heuristic;

    int operator[](const Policy &policy) const;
};
