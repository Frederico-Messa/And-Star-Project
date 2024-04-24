#pragma once
#include "./general.hpp"

class Task;
class Fact;

class PartialState : public Object
{
public:
    using Object::Object;

    // static map<Id, vec<Fact>> partial_states_true_factss;
    static vec<vec<Fact>> partial_states_true_factss; // This structure fails to follow the pattern of using unordered_map to store object information for efficiency reasons. This has to be a vector, otherwise the code goes much slower.
    static boost::bimap<Id, mpz_class> partial_states_hashes;

    vec<Fact> &true_facts() const;
    mpz_class hash() const;

    PartialState(const vec<Fact> &true_facts, const mpz_class &hash);
    PartialState(const vec<Fact> &true_facts);

    bool does_model(const PartialState &other) const;
    friend std::ostream& operator<<(std::ostream &out, const PartialState &self);
};
DEFINE_OBJECT_HASH(PartialState);

#include "./task.hpp"
#include "./fact.hpp"
