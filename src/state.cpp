#pragma once
#include "./general.cpp"

#include "./partial_state.cpp"
#include "./action.cpp"

class State : public PartialState
{
public:
    using PartialState::PartialState;

    // static std::unordered_map<Id, bool> are_states_goal;
    // static std::unordered_map<Id, std::vector<Action>> states_applicable_actionss;
    // static std::unordered_map<Id, std::unordered_map<int64_t, std::vector<State>>> states_actions_successor_statess;

    static std::unordered_map<int64_t, bool> are_states_goal;
    static std::unordered_map<int64_t, std::vector<Action>> states_applicable_actionss;
    static std::unordered_map<int64_t, std::unordered_map<int64_t, std::vector<State>>> states_actions_successor_statess;

    bool &is_goal(const PartialState &goal_condition) const
    {
        if (not are_states_goal.contains(this->id))
        {
            are_states_goal[this->id] = this->models(goal_condition);
        }
        return are_states_goal[this->id];
    }

    std::vector<Action> &get_applicable_actions(const std::vector<Action> &actions) const
    {
        if (not states_applicable_actionss.contains(this->id))
        {
            std::vector<Action> applicable_actions;
            for (const Action &action: actions)
            {
                if (this->can_receive_action(action))
                {
                    applicable_actions.push_back(action);
                }
            }
            states_applicable_actionss[this->id] = applicable_actions;
        }
        return states_applicable_actionss[this->id];
    }

    bool can_receive_action(const Action &action) const
    {
        return this->models(action.precondition());
    }

    std::vector<State> &get_successors(const Action &action) const
    {
        if (not states_actions_successor_statess.contains(this->id) or not states_actions_successor_statess[this->id].contains(action.id))
        {
            std::vector<State> successors;
            for (const PartialState &effect: action.effects())
            {
                successors.push_back(this->get_successor(effect));
            }
            states_actions_successor_statess[this->id][action.id] = successors;
        }
        return states_actions_successor_statess[this->id][action.id];
    }

    State get_successor(const PartialState &effect) const
    {
        std::vector<Fact> successor_true_facts = this->true_facts();
        mpz_class successor_hash = this->hash();
        int n = successor_true_facts.size();
        for (int i = 0; i < n; i++)
        {
            if (not effect.true_facts()[i].is_none() and not this->true_facts()[i].is_none())
            {
                successor_true_facts[i] = effect.true_facts()[i];
                successor_hash += successor_true_facts[i].hash() - this->true_facts()[i].hash();
            }
        }
        return State(successor_true_facts, successor_hash);
    }

    State get_projection(const std::vector<bool> &mask) const
    {
        std::vector<Fact> projection_true_facts;
        int n = mask.size();
        for (int i = 0; i < n; i++)
        {
            if (mask[i])
            {
                projection_true_facts.push_back(this->true_facts()[i]);
            }
            else
            {
                projection_true_facts.emplace_back();
            }
        }
        return State(projection_true_facts);
    }
};
DEFINE_OBJECT_HASH(State);

// std::unordered_map<State::Id, bool> State::are_states_goal;
// std::unordered_map<State::Id, std::vector<Action>> State::states_applicable_actionss;
// std::unordered_map<State::Id, std::unordered_map<int64_t, std::vector<State>>> State::states_actions_successor_statess;

std::unordered_map<int64_t, bool> State::are_states_goal;
std::unordered_map<int64_t, std::vector<Action>> State::states_applicable_actionss;
std::unordered_map<int64_t, std::unordered_map<int64_t, std::vector<State>>> State::states_actions_successor_statess;

// TODO: Filter successors repetitions
