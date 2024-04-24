#include "./and_star.hpp"

#include "../state_heuristics/delete_relaxation_heuristics/max.hpp"

AndStar::AndStar(const Policy::Heuristic &policy_heuristic, const State::Heuristic &state_heuristic, const std::function<bool(const Policy &, const Policy &, const Policy::Heuristic &, const State::Heuristic &)> &is_policy_worse_than, const SignaturingMethod &signaturing_method, const DeadlockHandling &deadlock_handling) : policy_heuristic(policy_heuristic), state_heuristic(state_heuristic), is_policy_worse_than(is_policy_worse_than), signaturing_method(signaturing_method), deadlock_handling(deadlock_handling) {}

Policy AndStar::get_solution(const Task &task)
{
    Max max_heuristic {task};
    bool is_symmetry_detection_active = task.symmetries_method != Task::SymmetriesMethod::NO_SYMS;

    auto get_policy_signature = [*this, &task, &is_symmetry_detection_active](const Policy &policy)
    {
        auto get_state_signature = [&task, &is_symmetry_detection_active](const State &state)
        {
            if (is_symmetry_detection_active)
            {
                return int(state.canonized(task));
            }
            else
            {
                return int(state);
            }
        };

        auto get_state_pair_signature = [&get_state_signature](const State &state_1, const State &state_2)
        {
            int64_t x = get_state_signature(state_1);
            int64_t y = get_state_signature(state_2);
            assert(x + y + 1 <= std::sqrt(INT64_MAX));
            return (x + y) * (x + y + 1) / 2 + y;
        };

        vec<int64_t> policy_signature;

        if (this->signaturing_method == SignaturingMethod::ID)
        {
            return std::vector {policy.id};
        }
        else
        if (this->signaturing_method == SignaturingMethod::LANES)
        {
            State pseudo_void_state;
            pseudo_void_state.id--;

            set<State> domain_states;
            for (const State &state: policy.domain_iterator())
            {
                domain_states.insert(state);
                policy_signature.push_back(get_state_pair_signature(state, pseudo_void_state));
            }

            set<State> outgoing_non_goal_states = policy.outgoing_non_goal_states(task.goal_condition());
            State pseudo_goal_state;

            set<State> outgoing_states = outgoing_non_goal_states;
            outgoing_states.insert(pseudo_goal_state);

            map<State, set<State>> reverse_links;
            Policy cursor_policy = policy;
            while (not cursor_policy.is_none())
            {
                State state = cursor_policy.state();
                Action action = cursor_policy.action();
                for (const State &successor_state: state.get_successors(action))
                {
                    if (domain_states.contains(successor_state) or outgoing_non_goal_states.contains(successor_state))
                    {
                        reverse_links[successor_state].insert(state);
                    }
                    else
                    {
                        reverse_links[pseudo_goal_state].insert(state);
                    }
                }
                cursor_policy = cursor_policy.parent_policy();
            }

            for (const State &outgoing_state: outgoing_states)
            {
                vec<State> stack {outgoing_state};
                set<State> reversely_reached_states;

                while (not stack.empty())
                {
                    State state = stack.back();
                    stack.pop_back();

                    for (const State &predecessor_state: reverse_links[state])
                    {
                        if (not reversely_reached_states.contains(predecessor_state))
                        {
                            reversely_reached_states.insert(predecessor_state);
                            policy_signature.push_back(get_state_pair_signature(predecessor_state, outgoing_state));
                            stack.push_back(predecessor_state);
                        }
                    }
                }
            }


            std::sort(policy_signature.begin(), policy_signature.end());
        }
        else
        {
            if (this->signaturing_method == SignaturingMethod::IN_OUT)
            {
                for (const State &state : policy.domain_iterator())
                {
                    policy_signature.push_back(get_state_signature(state));
                }
                std::sort(policy_signature.begin(), policy_signature.end());
                policy_signature.push_back(NONE);
            }

            int i = policy_signature.size();
            for (const State &state : policy.outgoing_non_goal_states(task.goal_condition()))
            {
                policy_signature.push_back(get_state_signature(state));
            }
            if (policy.does_reach_the_goal(task.goal_condition()))
            {
                policy_signature.push_back(0);
            }
            std::sort(policy_signature.begin() + i, policy_signature.end());
        }
        return policy_signature;
    };

    std::function<bool(const Policy &, const Policy &)> is_policy_worse_than = [*this](const Policy policy_1, const Policy policy_2)
    {
        return this->is_policy_worse_than(policy_1, policy_2, this->policy_heuristic, this->state_heuristic);
    };

    boost::heap::pairing_heap<Policy, boost::heap::stable<true>, boost::heap::compare<std::function<bool(const Policy &, const Policy &)>>> queue {is_policy_worse_than};
    set<vec<int64_t>> closed;

    double last_recurrent_procedure_time = NONE;
    auto recurrent_procedure = [this, &queue]()
    {
        std::cout << "Current f: " << policy_heuristic[queue.top()] << " | " << "exps: " << this->number_of_expanded_policies << std::endl;
        double memory_limit = get_memory_limit();
        double memory_usage = get_memory_usage();
        if (memory_usage > 0.95 * memory_limit)
        {
            throw std::runtime_error("Out of memory: AND* exceeded 95% memory limit.");
        }
    };

    Policy initial_policy = Policy();
    number_of_generated_policies++;
    if (task.initial_state().is_goal(task.goal_condition()))
    {
        functions_cache[Function{&Policy::outgoing_non_goal_states, initial_policy}][task.goal_condition()] = {};
        functions_cache[Function{&Policy::does_reach_the_goal, initial_policy}][task.goal_condition()] = true;
    }
    else
    {
        functions_cache[Function{&Policy::outgoing_non_goal_states, initial_policy}][task.goal_condition()] = {task.initial_state()};
        functions_cache[Function{&Policy::does_reach_the_goal, initial_policy}][task.goal_condition()] = false;
    }
    if (policy_heuristic[initial_policy] != INFTY)
    {
        queue.push(initial_policy);
        number_of_inserted_policies++;
    }

    while (not queue.empty())
    {
        if (get_ellapsed_time() - last_recurrent_procedure_time >= 1)
        {
            recurrent_procedure();
            last_recurrent_procedure_time = get_ellapsed_time();
        }

        Policy policy = queue.top();
        queue.pop();
        number_of_removed_policies++;

        if (policy.outgoing_non_goal_states(task.goal_condition()).empty())
        {
            bool properness_ensured = (this->deadlock_handling == DeadlockHandling::EARLY_DETECT_AND_PRUNE);
            if (properness_ensured)
            {
                return policy;
            }
            else
            {
                bool try_fixing_properness = (this->deadlock_handling == DeadlockHandling::TRY_TO_FIX_WHEN_CLOSED);
                if (try_fixing_properness)
                {
                    try
                    {
                        Policy solution = policy.with_fixed_properness(task);
                        return solution;
                    }
                    catch(const std::exception& e)
                    {
                        if (str(e.what()) == "Policy cannot be made proper.")
                        {
                            continue;
                        }
                        else
                        {
                            throw e;
                        }
                    }
                }
                else
                {
                    set<State> proper_domain_states;
                    bool reached_fixed_point = false;
                    while (not reached_fixed_point)
                    {
                        reached_fixed_point = true;
                        for (const State &state: policy.domain_iterator())
                        {
                            if (proper_domain_states.contains(state)) {continue;}
                            for (const State &successor_state: state.get_successors(policy[state]))
                            {
                                if (successor_state.is_goal(task.goal_condition()) or proper_domain_states.contains(successor_state))
                                {
                                    proper_domain_states.insert(state);
                                    reached_fixed_point = false;
                                    break;
                                }
                            }
                        }
                    }
                    if (proper_domain_states.size() == policy.size())
                    {
                        return policy;
                    }
                    else
                    {
                        continue;
                    }
                }
            }
        }

        if (this->signaturing_method != ID)
        {
            vec<int64_t> policy_signature = get_policy_signature(policy);
            if (closed.contains(policy_signature))
            {
                continue;
            }
            else
            {
                closed.insert(policy_signature);
            }
        }

        State state;
        if (policy.is_none()) {state = task.initial_state();}
        Policy cursor_policy = policy;
        while (state.is_none())
        {
            assert(not cursor_policy.is_none());
            for (const State &successor_state: cursor_policy.state().get_successors(cursor_policy.action()))
            {
                if (not policy.contains(successor_state) and not successor_state.is_goal(task.goal_condition()))
                {
                    state = successor_state;
                    break;
                }
            }
            cursor_policy = cursor_policy.parent_policy();
        }

        number_of_expanded_policies++;
        for (const Action &action: state.get_applicable_actions(task.actions()))
        {
            Policy successor_policy = Policy(state, action, policy);
            number_of_generated_policies++;

            bool has_infinite_f_value = false;
            bool has_escape_route = false;
            for (const State &successor_state: state.get_successors(action))
            {
                if (max_heuristic[successor_state] == INFTY)
                {
                    has_infinite_f_value = true;
                    break;
                }
                if (not successor_policy.contains(successor_state))
                {
                    has_escape_route = true;
                }
            }
            if (has_infinite_f_value)
            {
                continue;
            }

            bool early_detecting_unsolvability = (this->deadlock_handling == DeadlockHandling::EARLY_DETECT_AND_PRUNE);
            if (early_detecting_unsolvability)
            {
                bool through_deadlock_detection = true;
                vec<State> stack;
                set<State> already_added_states;
                stack.push_back(state);
                already_added_states.insert(state);
                while (not stack.empty() and not has_escape_route)
                {
                    State other_state = stack.back();
                    stack.pop_back();
                    vec<Action> other_actions =
                    (
                        (through_deadlock_detection)?
                            vec<Action> {successor_policy[other_state]}:
                            other_state.get_applicable_actions(task.actions())
                    );
                    for (const Action &other_action: other_actions)
                    {
                        bool is_action_allowed = true;
                        for (const State &other_state_successor: other_state.get_successors(other_action))
                        {
                            if (other_state_successor.is_goal(task.goal_condition()))
                            {
                                if (not successor_policy.does_reach_the_goal(task.goal_condition()))
                                {
                                    is_action_allowed = false;
                                    break;
                                }
                            }
                            else
                            {
                                if (not successor_policy.contains(other_state_successor) and not successor_policy.outgoing_non_goal_states(task.goal_condition()).contains(other_state_successor))
                                {
                                    is_action_allowed = false;
                                    break;
                                }
                            }
                        }
                        if (is_action_allowed) // All successors are in reach.
                        {
                            for (const State &other_state_successor: other_state.get_successors(other_action))
                            {
                                if (not already_added_states.contains(other_state_successor))
                                {
                                    if (not successor_policy.contains(other_state_successor)) // One successor is in reach \ domain.
                                    {
                                        has_escape_route = true;
                                        break;
                                    }
                                    stack.push_back(other_state_successor);
                                    already_added_states.insert(other_state_successor);
                                }
                            }
                        }
                    }
                }
                if (not has_escape_route)
                {
                    continue;
                }
            }

            queue.push(successor_policy);
            number_of_inserted_policies++;
        }
    }

    bool can_and_star_not_solve_solvable_task =
        SignaturingMethod::OUT or
        (this->signaturing_method == SignaturingMethod::IN_OUT and this->deadlock_handling != DeadlockHandling::TRY_TO_FIX_WHEN_CLOSED);
    if (can_and_star_not_solve_solvable_task)
    {
        throw std::runtime_error("Unable to solve the task. The used setting is not complete and needs a backup run in case of failure in order to be sound and complete. If you are using the high-level interface, try re-running with --sound-and-complete. If you are using the low-level interface, look at the README.md for a sound-and-complete setting.");
    }
    else
    {
        throw std::domain_error("Unsolvable Task");
    }
}
