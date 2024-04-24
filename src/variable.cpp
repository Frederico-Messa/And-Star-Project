#include "./variable.hpp"

Variable::Variable(const str &name)
{
    this->id = ++last_used_id;
    this->name() = name;
};

std::ostream& operator<<(std::ostream &out, const Variable &self)
{
    out << self.name();
    return out;
};
