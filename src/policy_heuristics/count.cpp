#include "./count.hpp"

int Count::operator[](const Policy &policy) const
{
    return policy.size() + policy.outgoing_non_goal_states(this->task.goal_condition()).size();
};
