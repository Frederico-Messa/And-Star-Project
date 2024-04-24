#pragma once

#include "../delete_relaxation_heuristic.hpp"
class Ff : public DeleteRelaxationHeuristic
{
public:
    using DeleteRelaxationHeuristic::DeleteRelaxationHeuristic;

    int operator[](const State &state) const;
};
