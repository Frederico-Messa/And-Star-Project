#pragma once
#include "./general.cpp"

#include "./partial_state.cpp"
#include "./fact.cpp"

class Action : public Object
{
public:
    using Object::Object;
    
    // static std::unordered_map<Id, std::string> actions_names;
    // static std::unordered_map<Id, PartialState> actions_preconditions;
    // static std::unordered_map<Id, std::vector<PartialState>> actions_effectss;
    // static std::unordered_map<Id, int> actions_costs;

    static std::unordered_map<int64_t, std::string> actions_names;
    static std::unordered_map<int64_t, PartialState> actions_preconditions;
    static std::unordered_map<int64_t, std::vector<PartialState>> actions_effectss;
    static std::unordered_map<int64_t, int> actions_costs;

    Action(const std::string &name, const PartialState &precondition, const std::vector<PartialState> &effects, int cost)
    {
        this->id = ++last_used_id;
        actions_names[this->id] = name;
        actions_preconditions[this->id] = precondition;
        actions_effectss[this->id] = effects;
        actions_costs[this->id] = cost;
    };

    std::string &name() const
    {
        return actions_names[this->id];
    };

    PartialState &precondition() const
    {
        return actions_preconditions[this->id];
    };

    std::vector<PartialState> &effects() const
    {
        return actions_effectss[this->id];
    };

    int &cost() const
    {
        return actions_costs[this->id];
    };

    friend std::ostream& operator<<(std::ostream &out, const Action &self)
    {
        out << self.name();
        return out;
    };
};
DEFINE_OBJECT_HASH(Action);

// std::unordered_map<Action::Id, std::string> Action::actions_names;
// std::unordered_map<Action::Id, PartialState> Action::actions_preconditions;
// std::unordered_map<Action::Id, std::vector<PartialState>> Action::actions_effectss;
// std::unordered_map<Action::Id, int> Action::actions_costs;

std::unordered_map<int64_t, std::string> Action::actions_names;
std::unordered_map<int64_t, PartialState> Action::actions_preconditions;
std::unordered_map<int64_t, std::vector<PartialState>> Action::actions_effectss;
std::unordered_map<int64_t, int> Action::actions_costs;
