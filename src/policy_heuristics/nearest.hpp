#pragma once

#include "../policy.hpp"
class Nearest : public Policy::Heuristic
{
public:
    const State::Heuristic &state_heuristic;

    Nearest(const Task &task, const State::Heuristic &state_heuristic);

    int operator[](const Policy &policy) const;
};
