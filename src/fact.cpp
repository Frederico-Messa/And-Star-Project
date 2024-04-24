#include "./fact.hpp"

Fact::Fact(const Variable &variable, const str &value, const mpz_class &hash)
{
    this->id = ++last_used_id;
    this->variable() = variable;
    this->value() = value;
    this->hash() = hash;
}

Fact Fact::canonized(const Task &task) const
{
    Function this_function {&Fact::canonized, *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(task))
    {
        cache[task] = *task.get_canonical_facts_set({*this}).begin();
    }
    return cache[task];
}

std::ostream& operator<<(std::ostream &out, const Fact &self)
{
    if (self.value().starts_with("Atom "))
    {
        out << self.value().substr(5);
    }
    else
    if (self.value().starts_with("NegatedAtom "))
    {
        out << "not(" << self.value().substr(12) << ")";
    }
    else
    {
        assert(self.value() == "<none of those>");
        bool first = true;
        for (const Fact &other_fact: self.variable().facts())
        {
            if (other_fact != self)
            {
                if (not first) {out << "/";} first = false;
                assert(other_fact.value().starts_with("Atom "));
                out << "not(" << other_fact.value().substr(5) << ")";
            }
        }
    }

    return out;
}
