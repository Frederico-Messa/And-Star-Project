#pragma once

#include "../state.hpp"
class Star : public State::Heuristic
{
public:

    Star(const Task &task);

    int operator[](const State &state) const;
};
