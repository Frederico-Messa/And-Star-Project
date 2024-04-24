#pragma once

#include "../policy.hpp"
class DeltaPathmax : public Policy::Heuristic
{
public:
    const State::Heuristic &state_heuristic;

    DeltaPathmax(const Task &task, const State::Heuristic &state_heuristic);

    int operator[](const Policy &policy) const;
};
