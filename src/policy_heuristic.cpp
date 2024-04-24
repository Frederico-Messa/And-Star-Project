#pragma once
#include "./general.cpp"

#include "./policy.cpp"
#include "./partial_state.cpp"
#include "./state_heuristic.cpp"

class PolicyHeuristic : public Object
{
public:
    using Object::Object;

    virtual int get_heuristic_value(const Policy &policy, const PartialState &goal_condition, const StateHeuristic &state_heuristic) const = 0;
};
