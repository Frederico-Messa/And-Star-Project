#pragma once
#include "./general.cpp"

#include "./variable.cpp"

class Fact : public Object
{
public:
    using Object::Object;

    // static std::unordered_map<Id, Variable> facts_variables;
    // static std::unordered_map<Id, std::string> facts_values;
    // static std::unordered_map<Id, mpz_class> facts_hashes;

    static std::unordered_map<int64_t, Variable> facts_variables;
    static std::unordered_map<int64_t, std::string> facts_values;
    static std::unordered_map<int64_t, mpz_class> facts_hashes;

    Fact(const Variable &variable, const std::string &value, const mpz_class &hash)
    {
        this->id = ++last_used_id;
        facts_variables[this->id] = variable;
        facts_values[this->id] = value;
        facts_hashes[this->id] = hash;
    };

    Variable &variable() const
    {
        return facts_variables[this->id];
    };

    std::string &value() const
    {
        return facts_values[this->id];
    };

    mpz_class &hash() const
    {
        return facts_hashes[this->id];
    };

    friend std::ostream& operator<<(std::ostream &out, const Fact &self)
    {
        out << self.variable() << " = " << self.value();
        return out;
    };
};
DEFINE_OBJECT_HASH(Fact);

// std::unordered_map<Fact::Id, Variable> Fact::facts_variables;
// std::unordered_map<Fact::Id, std::string> Fact::facts_values;
// std::unordered_map<Fact::Id, mpz_class> Fact::facts_hashes;

std::unordered_map<int64_t, Variable> Fact::facts_variables;
std::unordered_map<int64_t, std::string> Fact::facts_values;
std::unordered_map<int64_t, mpz_class> Fact::facts_hashes;
