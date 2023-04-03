#pragma once

#include "../state_heuristic.cpp"

class Blind : public StateHeuristic // Caution, get_heuristic_value here is returning a non-stable reference.
{
public:
    static int singular_cache;

    Blind()
    {
    }

    int &get_heuristic_value(const State &state, const PartialState &goal_condition) const
    {
        singular_cache = state.is_goal(goal_condition)? 0: 1;
        return singular_cache;
    };
};

int Blind::singular_cache;
