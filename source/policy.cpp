#pragma once
#include "./general.cpp"

#include "./state.cpp"
#include "./action.cpp"

class Policy : public Object
{
public:
    using Object::Object;

    // static std::unordered_map<Id, State> policies_states;
    // static std::unordered_map<Id, Action> policies_actions;
    // static std::unordered_map<Id, Policy> policies_parents_policies;

    // static std::unordered_map<Id, std::unordered_map<State, Action>> policies_mappingss;
    // static std::unordered_map<Id, std::unordered_set<State>> policies_outgoing_non_goal_statess;
    // static std::unordered_map<Id, bool> do_policies_reach_the_goal;

    static std::unordered_map<int64_t, State> policies_states;
    static std::unordered_map<int64_t, Action> policies_actions;
    static std::unordered_map<int64_t, Policy> policies_parents_policies;

    static std::unordered_map<int64_t, std::unordered_map<State, Action>> policies_mappingss;
    static std::unordered_map<int64_t, std::unordered_set<State>> policies_outgoing_non_goal_statess;
    static std::unordered_map<int64_t, bool> do_policies_reach_the_goal;
    static int64_t cache_size_estimation;

    static void clear_cache()
    {
        policies_mappingss.clear();
        policies_outgoing_non_goal_statess.clear();
        do_policies_reach_the_goal.clear();
        cache_size_estimation = 0;
    };

    Policy(const State &state, const Action &action, const Policy &parent_policy)
    {
        this->id = ++last_used_id;
        policies_states[this->id] = state;
        policies_actions[this->id] = action;
        policies_parents_policies[this->id] = parent_policy;
    };

    State &state() const
    {
        return policies_states[this->id];
    }

    Action &action() const
    {
        return policies_actions[this->id];
    }

    Policy &parent_policy() const
    {
        return policies_parents_policies[this->id];
    }

    std::unordered_map<State, Action> &mappings() const
    {
        if (not policies_mappingss.contains(this->id))
        {
            cache_size_estimation += 2;
            if (this->is_none())
            {
                policies_mappingss[this->id] = {};
            }
            else
            {
                policies_mappingss[this->id] = this->parent_policy().mappings();
                policies_mappingss[this->id][this->state()] = this->action();
                cache_size_estimation += 2 * policies_mappingss[this->id].size();
            }
        }

        return policies_mappingss[this->id];
    };

    std::unordered_set<State> &outgoing_non_goal_states(const PartialState &goal_condition) const
    {
        if (not policies_outgoing_non_goal_statess.contains(this->id))
        {
            cache_size_estimation += 4;
            if (this->is_none())
            {
                policies_outgoing_non_goal_statess[this->id] = {};
                do_policies_reach_the_goal[this->id] = false;
            }
            else
            {
                this->mappings();
                policies_outgoing_non_goal_statess[this->id] = this->parent_policy().outgoing_non_goal_states(goal_condition);
                do_policies_reach_the_goal[this->id] = this->parent_policy().does_reach_the_goal(goal_condition);
                policies_outgoing_non_goal_statess[this->id].erase(this->state());
                for (const State &successor_state: this->state().get_successors(this->action()))
                {
                    if (successor_state.is_goal(goal_condition))
                    {
                        do_policies_reach_the_goal[this->id] = true;
                    }
                    else
                    {
                        if (not policies_mappingss[this->id].contains(successor_state))
                        {
                            policies_outgoing_non_goal_statess[this->id].insert(successor_state);
                        }
                    }
                }
                cache_size_estimation += policies_outgoing_non_goal_statess[this->id].size();
            }
        }

        return policies_outgoing_non_goal_statess[this->id];
    };

    bool &does_reach_the_goal(const PartialState &goal_condition) const
    {
        if (not do_policies_reach_the_goal.contains(this->id))
        {
            this->outgoing_non_goal_states(goal_condition);
        }

        return do_policies_reach_the_goal[this->id];
    };

    friend std::ostream& operator<<(std::ostream &out, const Policy &self)
    {
        bool first = true;
        for (const std::pair<State, Action> &pair: self.mappings())
        {
            if (not first)
            {
                out << std::endl;
            }
            State state = pair.first;
            Action action = pair.second;
            out << "[" << state << "]" << " -> " << action;
            first = false;
        }
        return out;
    };
};
DEFINE_OBJECT_HASH(Policy);

// std::unordered_map<Policy::Id, State> Policy::policies_states;
// std::unordered_map<Policy::Id, Action> Policy::policies_actions;
// std::unordered_map<Policy::Id, Policy> Policy::policies_parents_policies;

// std::unordered_map<Policy::Id, std::unordered_map<State, Action>> Policy::policies_mappingss;
// std::unordered_map<Policy::Id, std::unordered_set<State>> Policy::policies_outgoing_non_goal_statess;
// std::unordered_map<Policy::Id, bool> Policy::do_policies_reach_the_goal;

std::unordered_map<int64_t, State> Policy::policies_states;
std::unordered_map<int64_t, Action> Policy::policies_actions;
std::unordered_map<int64_t, Policy> Policy::policies_parents_policies;

std::unordered_map<int64_t, std::unordered_map<State, Action>> Policy::policies_mappingss;
std::unordered_map<int64_t, std::unordered_set<State>> Policy::policies_outgoing_non_goal_statess;
std::unordered_map<int64_t, bool> Policy::do_policies_reach_the_goal;
int64_t Policy::cache_size_estimation = 0;

#define EMPTY_POLICY Policy()
