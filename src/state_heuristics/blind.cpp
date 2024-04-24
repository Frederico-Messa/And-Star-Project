#include "./blind.hpp"

int Blind::operator[](const State &state) const
{
    return state.is_goal(this->task.goal_condition())? 0: 1;;
};
