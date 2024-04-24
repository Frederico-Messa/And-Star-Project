#include "./action.hpp"

Action::Action(const str &name, const PartialState &precondition, const vec<PartialState> &effects, int cost)
{
    this->id = ++last_used_id;
    this->name() = name;
    this->precondition() = precondition;
    this->effects() = effects;
    this->cost() = cost;
};

#include <regex>
std::ostream& operator<<(std::ostream &out, const Action &self)
{
    out << std::regex_replace(self.name(), std::regex("_v[1-9][0-9]*"), "");
    return out;
};
