#pragma once
#include "./general.cpp"

#include "./fact.cpp"

class PartialState : public Object
{
public:
    using Object::Object;

    // static std::unordered_map<Id, std::vector<Fact>> partial_states_true_factss;
    // static boost::bimap<Id, mpz_class> partial_states_hashes;

    static std::vector<std::vector<Fact>> partial_states_true_factss; // This structure fails to follow the pattern of using unordered_map to store object information for efficiency reasons. This has to be a vector, otherwise the code goes much slower.
    static boost::bimap<int64_t, mpz_class> partial_states_hashes;

    PartialState(const std::vector<Fact> &true_facts, const mpz_class &hash)
    {
        if (partial_states_hashes.right.find(hash) != partial_states_hashes.right.end())
        {
            this->id = partial_states_hashes.right.at(hash);
        }
        else
        {
            this->id = ++last_used_id;
            while (partial_states_true_factss.size() <= this->id) {partial_states_true_factss.emplace_back();} // See comment above.
            partial_states_true_factss[this->id] = true_facts;
            partial_states_hashes.insert({this->id, hash});
        }
    };

    PartialState(const std::vector<Fact> &true_facts)
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
            while (partial_states_true_factss.size() <= this->id) {partial_states_true_factss.emplace_back();} // See comment above.
            partial_states_true_factss[this->id] = true_facts;
            partial_states_hashes.insert({this->id, hash});
        }
    };

    std::vector<Fact> &true_facts() const
    {
        return partial_states_true_factss[this->id];
    };

    mpz_class hash() const
    {
        return partial_states_hashes.left.at(this->id);
    };

    bool models(const PartialState &other) const
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

    friend std::ostream& operator<<(std::ostream &out, const PartialState &self)
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
};
DEFINE_OBJECT_HASH(PartialState);

// std::unordered_map<PartialState::Id, std::vector<Fact>> PartialState::partial_states_true_factss;
// boost::bimap<PartialState::Id, mpz_class> PartialState::partial_states_hashes;

std::vector<std::vector<Fact>> PartialState::partial_states_true_factss;
boost::bimap<int64_t, mpz_class> PartialState::partial_states_hashes;
