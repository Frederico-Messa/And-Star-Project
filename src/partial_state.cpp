#include "./partial_state.hpp"

vec<Fact> &PartialState::true_facts() const
{
    return partial_states_true_factss[this->id];
};

mpz_class PartialState::hash() const
{
    return partial_states_hashes.left.at(this->id);
};

PartialState::PartialState(const vec<Fact> &true_facts, const mpz_class &hash)
{
    if (partial_states_hashes.right.find(hash) != partial_states_hashes.right.end())
    {
        this->id = partial_states_hashes.right.at(hash);
    }
    else
    {
        this->id = ++last_used_id;
        if (partial_states_true_factss.size() <= this->id)
        {
            partial_states_true_factss.resize(this->id + 1);
        }
        partial_states_true_factss[this->id] = true_facts;
        partial_states_hashes.insert({this->id, hash});
    }
};

PartialState::PartialState(const vec<Fact> &true_facts)
{
    mpz_class hash = 0;
    for (const Fact &fact: true_facts)
    {
        hash += fact.hash();
    }

    if (partial_states_hashes.right.find(hash) != partial_states_hashes.right.end())
    {
        this->id = partial_states_hashes.right.at(hash);
    }
    else
    {
        this->id = ++last_used_id;
        if (partial_states_true_factss.size() <= this->id)
        {
            partial_states_true_factss.resize(this->id + 1);
        }
        partial_states_true_factss[this->id] = true_facts;
        partial_states_hashes.insert({this->id, hash});
    }
};

bool PartialState::does_model(const PartialState &other) const
{
    for (int i = 0; i < this->true_facts().size(); i++)
    {
        if (not other.true_facts()[i].is_none() and not this->true_facts()[i].is_none())
        {
            if (other.true_facts()[i] != this->true_facts()[i])
            {
                return false;
            }
        }
    }
    return true;
}

std::ostream& operator<<(std::ostream &out, const PartialState &self)
{
    bool first = true;
    for (const Fact &fact: self.true_facts())
    {
        if (not fact.is_none())
        {
            if (not first)
            {
                out << ", ";
            }
            out << fact;
            first = false;
        }
    }
    return out;
};

// map<PartialState::Id, vec<Fact>> PartialState::partial_states_true_factss;
vec<vec<Fact>> PartialState::partial_states_true_factss;
boost::bimap<PartialState::Id, mpz_class> PartialState::partial_states_hashes;
