#pragma once
#include "./general.cpp"

class Variable : public Object
{
public:
    using Object::Object;

    // static std::unordered_map<Id, std::string> variables_names;
    // static std::unordered_map<Id, int> variables_domains_sizes;

    static std::unordered_map<int64_t, std::string> variables_names;
    static std::unordered_map<int64_t, int> variables_domains_sizes;

    Variable(const std::string &name, int domain_size)
    {
        this->id = ++last_used_id;
        variables_names[this->id] = name;
        variables_domains_sizes[this->id] = domain_size;
    };

    std::string &name() const
    {
        return variables_names[this->id];
    };

    int &domain_size() const
    {
        return variables_domains_sizes[this->id];
    };

    friend std::ostream& operator<<(std::ostream &out, const Variable &self)
    {
        out << self.name();
        return out;
    };
};
DEFINE_OBJECT_HASH(Variable);

// std::unordered_map<Variable::Id, std::string> Variable::variables_names;
// std::unordered_map<Variable::Id, int> Variable::variables_domains_sizes;

std::unordered_map<int64_t, std::string> Variable::variables_names;
std::unordered_map<int64_t, int> Variable::variables_domains_sizes;
