#pragma once

#include "../policy.hpp"
class DeltaNearest : public Policy::Heuristic
{
public:
    const State::Heuristic &state_heuristic;

    DeltaNearest(const Task &task, const State::Heuristic &state_heuristic);

    int operator[](const Policy &policy) const;
};
