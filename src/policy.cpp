#include "./policy.hpp"

Policy::Policy(const State &state, const Action &action, const Policy &parent_policy)
{
    this->id = ++last_used_id;
    this->state() = state;
    this->action() = action;
    this->parent_policy() = parent_policy;
}

Policy::DomainIterator Policy::domain_iterator() const
{
    return DomainIterator(*this);
}

Action &Policy::operator[](const State &state) const
{
    if (this->is_none())
    {
        throw std::out_of_range("State not in policy.");
    }
    if (this->state() == state)
    {
        return this->action();
    }
    return this->parent_policy()[state];
}

bool Policy::contains(const State &state) const
{
    if (this->is_none())
    {
        return false;
    }
    if (this->state() == state)
    {
        return true;
    }
    return this->parent_policy().contains(state);
}

size_t Policy::size() const
{
    if (this->is_none())
    {
        return 0;
    }
    return this->parent_policy().size() + 1;
}

set<State> Policy::outgoing_non_goal_states(const PartialState &goal_condition) const
{
    Function this_function {&Policy::outgoing_non_goal_states, *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(goal_condition))
    {
        auto &do_reach_the_goal_cache = functions_cache[Function{&Policy::does_reach_the_goal, *this}];
        if (this->is_none())
        {
            cache[goal_condition] = {};
            do_reach_the_goal_cache[goal_condition] = false;
        }
        else
        {
            cache[goal_condition] = this->parent_policy().outgoing_non_goal_states(goal_condition);
            do_reach_the_goal_cache[goal_condition] = this->parent_policy().does_reach_the_goal(goal_condition);
            cache[goal_condition].erase(this->state());
            for (const State &successor_state: this->state().get_successors(this->action()))
            {
                if (successor_state.is_goal(goal_condition))
                {
                    do_reach_the_goal_cache[goal_condition] = true;
                }
                else
                {
                    if (not this->contains(successor_state))
                    {
                        cache[goal_condition].insert(successor_state);
                    }
                }
            }
        }
    }
    return cache[goal_condition];
};

bool Policy::does_reach_the_goal(const PartialState &goal_condition) const
{
    Function this_function {&Policy::does_reach_the_goal, *this};
    auto &cache = functions_cache[this_function];
    if (not cache.contains(goal_condition))
    {
        this->outgoing_non_goal_states(goal_condition);
    }
    return cache[goal_condition];
};

Policy Policy::with_fixed_properness(const Task &task) const
{
    map<State, Action> new_mappings;
    set<State> proper_domain_states;
    set<State> domain_states;
    for (const State &state: this->domain_iterator())
    {
        domain_states.insert(state);
    }
    while (proper_domain_states.size() < this->size())
    {
        bool reached_fixed_point = true;
        for (const State &state: this->domain_iterator())
        {
            if (not proper_domain_states.contains(state))
            {
                for (const Action &action: state.get_applicable_actions(task.actions()))
                {
                    bool is_action_closed = true;
                    bool is_action_proper = false;
                    for (const State &successor_state: state.get_successors(action))
                    {
                        if (successor_state.is_goal(task.goal_condition()) or proper_domain_states.contains(successor_state))
                        {
                            is_action_proper = true;
                        }
                        else
                        {
                            if (not domain_states.contains(successor_state))
                            {
                                is_action_closed = false;
                                break;
                            }
                        }
                    }
                    if (is_action_closed and is_action_proper)
                    {
                        new_mappings[state] = action;
                        proper_domain_states.insert(state);
                        reached_fixed_point = false;
                        break;
                    }
                }
            }
        }
        if (reached_fixed_point)
        {
            throw std::domain_error("Policy cannot be made proper.");
        }
    }
    Policy cursor_policy;
    for (const State &state: this->domain_iterator())
    {
        cursor_policy = Policy(state, new_mappings[state], cursor_policy);
    }
    return cursor_policy;
}

str Policy::compute_and_print_compressed_version(const Task &task, const str &ip_solver_label) const
{
    std::stringstream compressor_input_sstr;

    set<State> domain_states;
    set<State> reachable_states;
    Policy cursor_policy = *this;
    while (not cursor_policy.is_none())
    {
        State state = cursor_policy.state();
        Action action = cursor_policy.action();

        domain_states.insert(state);
        reachable_states.insert(state);
        for (const State &successor_state: state.get_successors(action))
        {
            reachable_states.insert(successor_state);
        }

        for (const Fact &fact: state.true_facts())
        {
            compressor_input_sstr << fact.id;
            compressor_input_sstr << " ";
        }
        compressor_input_sstr << action.id << "\n";
        cursor_policy = cursor_policy.parent_policy();
    }

    for (const State &reachable_state: reachable_states)
    {
        if (not domain_states.contains(reachable_state))
        {
            for (const Fact &fact: reachable_state.true_facts())
            {
                compressor_input_sstr << fact.id;
                compressor_input_sstr << " ";
            }
            compressor_input_sstr << "GOAL" << "\n";
        }
    }

    compressor_input_sstr << "\n";

    std::stringstream compressor_output_sstr;
    compressor_output_sstr << get_output("compressor", "python3 ./dep/compressor/compressor.py --null-fact-token -1 --ip-solver-label " + ip_solver_label, compressor_input_sstr.str());

    std::cout << std::endl;
    std::cout << "The Compressed Version:" << std::endl;
    std::stringstream in_prp_str_format;
    in_prp_str_format << "Policy:" << std::endl << std::endl;
    int id;
    int i = 0;
    int j = 0;
    vec<Fact> partial_state_true_facts;
    while (compressor_output_sstr >> id, not compressor_output_sstr.eof())
    {
        i = (i + 1) % (task.variables().size() + 1);
        if (i == 0) // action
        {
            PartialState partial_state = PartialState(partial_state_true_facts);
            partial_state_true_facts.clear();

            Action action;
            action.id = id;
            std::cout << "[" << partial_state << "]" << " -> " << action << std::endl;

            in_prp_str_format << "If holds:";
            bool first = true;
            for (const Fact &fact: partial_state.true_facts())
            {
                if (not fact.is_none())
                {
                    if (not first) {in_prp_str_format << "/";} first = false;

                    if (fact.value().starts_with("Atom "))
                    {
                        in_prp_str_format << " " << fact.value().substr(5) << " ";
                    }
                    else
                    if (fact.value().starts_with("NegatedAtom "))
                    {
                        in_prp_str_format << " not(" << fact.value().substr(12) << ") ";
                    }
                    else
                    {
                        assert(fact.value() == "<none of those>");
                        bool first = true;
                        for (const Fact &other_fact: fact.variable().facts())
                        {
                            if (other_fact != fact)
                            {
                                if (not first) {in_prp_str_format << "/";} first = false;
                                assert(other_fact.value().starts_with("Atom "));
                                in_prp_str_format << " not(" << other_fact.value().substr(5) << ") ";
                            }
                        }
                    }
                }
            }
            in_prp_str_format << std::endl;
            in_prp_str_format << "Execute: " << action << std::endl;
            in_prp_str_format << std::endl;

            j++;
        }
        else // fact
        {
            Fact fact;
            fact.id = id;
            partial_state_true_facts.push_back(fact);
        }
    }
    std::cout << "Compressed Size: " << j << std::endl;
    std::cout << std::endl;
    std::cout << "Compression End Time: " << get_ellapsed_time() << std::endl;

    return in_prp_str_format.str();
}

std::ostream& operator<<(std::ostream &out, const Policy &self)
{
    bool first = true;
    for (const State &state: self.domain_iterator())
    {
        if (not first)
        {
            out << std::endl;
        }
        out << "[" << state << "]" << " -> " << self[state];
        first = false;
    }
    return out;
};

Policy::DomainIterator::DomainIterator(const Policy &policy) : policy(policy)
{
}

Policy::DomainIterator Policy::DomainIterator::begin() const
{
    return *this;
}

Policy::DomainIterator Policy::DomainIterator::end() const
{
    return DomainIterator({});
}

Policy::DomainIterator &Policy::DomainIterator::operator++()
{
    this->policy.id = this->policy.parent_policy().id;
    return *this;
}

bool Policy::DomainIterator::operator!=(const Policy::DomainIterator &other) const
{
    return this->policy != other.policy;
}

State Policy::DomainIterator::operator*() const
{
    return this->policy.state();
}

Policy::Heuristic::Heuristic(const Task &task) : task(task)
{
}
