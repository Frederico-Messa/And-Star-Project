#include "./general.cpp"
#include "./task.cpp"
#include "./policy_heuristic.cpp"
#include "./policy_heuristics/weak_count.cpp"
#include "./policy_heuristics/weak_nearest.cpp"
#include "./policy_heuristics/weak_delta.cpp"
#include "./policy_heuristics/weak_delta_nearest.cpp"
#include "./policy_heuristics/weakstrong_delta_nearest.cpp"
#include "./policy_heuristics/strongweak_delta_nearest.cpp"
#include "./policy_heuristics/strong_count.cpp"
#include "./policy_heuristics/strong_nearest.cpp"
#include "./policy_heuristics/strong_delta.cpp"
#include "./policy_heuristics/strong_delta_nearest.cpp"
#include "./state_heuristic.cpp"
#include "./state_heuristics/blind.cpp"
#include "./state_heuristics/max.cpp"
// #include "./state_heuristics/add.cpp"
// #include "./state_heuristics/ff.cpp"
#include "./state_heuristics/lmcut.cpp"
#include "./state_heuristics/star.cpp"

std::string solution_file_name;
void export_solution(const std::unordered_map<State, Action> &policy_mappings)
{
    if (not solution_file_name.empty())
    {
        std::ofstream solution_file;
        solution_file.open(solution_file_name);
        for (const std::pair<State, Action> &pair: policy_mappings)
        {
            State state = pair.first;
            Action action = pair.second;
            for (const Fact &fact: state.true_facts())
            {
                solution_file << fact.id;
                solution_file << " ";
            }
            solution_file << -1;
            solution_file << " ";
            solution_file << action.id;
            solution_file << std::endl;
        }
        solution_file << -2;
        solution_file.close();
    }
}

int64_t number_of_considered_policies = 0;
int64_t number_of_inserted_policies = 0;
int64_t number_of_removed_policies = 0;
int64_t number_of_expanded_policies = 0;
int64_t number_of_removed_policies_in_latter_f_layer = NONE;
void print_end(const std::string &termination, const std::optional<Policy> &policy)
{
    std::cout << std::endl;
    std::cout << "Termination: " << termination << std::endl;
    std::cout << "Final Memory Usage: " << get_memory_usage() << std::endl;
    std::cout << "Total Elapsed Time: " << get_ellapsed_time() << std::endl;
    std::cout << "Number of considered policies: " << number_of_considered_policies << std::endl;
    std::cout << "Number of inserted policies: " << number_of_inserted_policies << std::endl;
    std::cout << "Number of removed policies: " << number_of_removed_policies << std::endl;
    std::cout << "Number of expanded policies: " << number_of_expanded_policies << std::endl;

    if (policy.has_value())
    {
        std::cout << "Number of removed policies with f<f*: " << number_of_removed_policies - number_of_removed_policies_in_latter_f_layer << std::endl;

        std::cout << std::endl;
        std::cout << "An Optimal-Size Policy:" << std::endl;
        std::cout << policy.value() << std::endl;
        std::cout << "Optimal Size: " << policy->mappings().size() << std::endl;

        export_solution(policy->mappings());
    }
}

std::ofstream policies_graph_file;
bool should_create_policies_graph;
void fill_policies_graph(const Policy &policy, const std::string &information)
{
    bool first;
    policies_graph_file << "n_" << policy.id + 1 << " [shape=record label=\"";
    policies_graph_file << information;
    policies_graph_file << "|";
    if (not policy.is_none())
    {
        policies_graph_file << "{";
        first = true;
        for (const Fact &fact: policy.state().true_facts())
        {
            if (not first) {policies_graph_file << "|";} first = false;
            policies_graph_file << fact.variable();
        }
        policies_graph_file << "}";
        policies_graph_file << "|";
        policies_graph_file << "{";
        first = true;
        for (const Fact &fact: policy.state().true_facts())
        {
            if (not first) {policies_graph_file << "|";} first = false;
            policies_graph_file << fact.value();
        }
        policies_graph_file << "}";
        policies_graph_file << "|";
        policies_graph_file << policy.action();
    }
    policies_graph_file << "\"]" << std::endl;
    if (not policy.is_none())
    {
        policies_graph_file << "n_" << policy.parent_policy().id + 1 << " -> " << "n_" << policy.id + 1 << std::endl;
    }  
}

int64_t cache_limit = 6250000 * get_memory_limit();
int64_t last_cache_clear = NONE;
int memory_allowance = NONE;
std::vector<double> memory_thresholds = {0.6, 0.8, 0.95, 0.99, 2};
void consider_clearing_the_cache()
{
    if (Policy::cache_size_estimation >= cache_limit)
    {
        double memory_limit = get_memory_limit();
        double memory_usage = get_memory_usage();

        if (memory_allowance == NONE)
        {
            memory_allowance = 0;
            cache_limit = Policy::cache_size_estimation / memory_usage * memory_limit * memory_thresholds[memory_allowance];
            return;
        }

        if (number_of_removed_policies - last_cache_clear <= 100)
        {
            memory_allowance++;
        }
        cache_limit = Policy::cache_size_estimation / memory_usage * memory_limit * memory_thresholds[memory_allowance];
        std::cout << "Clearing cache..." << " " << "(" << memory_usage << ")" << std::endl;
        Policy::clear_cache();
        std::cout << "Cache cleared." << std::endl;
        last_cache_clear = number_of_removed_policies;
    }
}

std::unordered_map<Policy, int> policies_f_values;
std::unordered_map<Policy, int> policies_sizes;

struct PolicyOrdering
{
    bool operator()(const Policy policy_1, const Policy policy_2) const
    {
        if (policies_f_values[policy_1] != policies_f_values[policy_2])
        {
            return policies_f_values[policy_1] > policies_f_values[policy_2];
        }

        return policies_sizes[policy_1] < policies_sizes[policy_2];
    }
};

bool and_star(const Task &task, const PolicyHeuristic &policy_heuristic, const StateHeuristic &state_heuristic)
{
    boost::heap::pairing_heap<Policy, boost::heap::stable<true>, boost::heap::compare<PolicyOrdering>> queue;
    int current_f_value = NONE;

    Policy initial_policy = Policy();
    number_of_considered_policies++;
    if (task.initial_state.is_goal(task.goal_condition))
    {
        Policy::do_policies_reach_the_goal[initial_policy.id] = true;
    }
    else
    {
        Policy::policies_outgoing_non_goal_statess[initial_policy.id] = {task.initial_state};
    }
    policies_sizes[initial_policy] = 0;
    policies_f_values[initial_policy] = policy_heuristic.get_heuristic_value(initial_policy, task.goal_condition, state_heuristic);
    if (should_create_policies_graph) fill_policies_graph(initial_policy, std::to_string(policies_f_values[initial_policy]));
    if (policies_f_values[initial_policy] != INFTY)
    {
        queue.push(initial_policy);
        number_of_inserted_policies++;
    }

    while (not queue.empty())
    {
        if (policies_f_values[queue.top()] > current_f_value)
        {
            current_f_value = policies_f_values[queue.top()];
            std::cout << "New f: " << current_f_value << std::endl;
            number_of_removed_policies_in_latter_f_layer = 0;
        }

        consider_clearing_the_cache();

        Policy policy = queue.top();
        queue.pop();
        number_of_removed_policies++;
        if (policies_f_values[policy] == current_f_value)
        {
            number_of_removed_policies_in_latter_f_layer++;
        }

        if (policy.outgoing_non_goal_states(task.goal_condition).empty())
        {
            policies_graph_file << "goal [shape=record label=\"*\"]" << std::endl;
            policies_graph_file << "n_" << policy.id + 1 << " -> goal" << std::endl;
            print_end("Solved.", policy);
            return false;
        }

        State state;
        if (policy.is_none()) {state = task.initial_state;}
        Policy cursor_policy = policy;
        while (state.is_none())
        {
            for (const State &successor_state: cursor_policy.state().get_successors(cursor_policy.action()))
            {
                if (state.is_none() and not policy.mappings().contains(successor_state) and not successor_state.is_goal(task.goal_condition))
                {
                    state = successor_state;
                    break;
                }
            }
            cursor_policy = cursor_policy.parent_policy();
        }

        number_of_expanded_policies++;
        for (const Action &action: state.get_applicable_actions(task.actions))
        {
            Policy successor_policy = Policy(state, action, policy);
            number_of_considered_policies++;

            bool has_infinite_f_value = false;
            for (const State &successor_state: state.get_successors(action))
            {
                if (state_heuristic.get_heuristic_value(successor_state, task.goal_condition) == INFTY)
                {
                    has_infinite_f_value = true;
                    break;
                }
            }
            if (has_infinite_f_value)
            {
                if (should_create_policies_graph) fill_policies_graph(successor_policy, "∞");
                continue;
            }

            bool has_escape_route = false;
            std::vector<State> stack;
            std::unordered_set<State> already_added_states;
            stack.push_back(state);
            already_added_states.insert(state);
            while (not stack.empty() and not has_escape_route)
            {
                State other_state = stack.back();
                stack.pop_back();
                for (const State &other_state_successor: other_state.get_successors(successor_policy.mappings()[other_state]))
                {
                    if (not already_added_states.contains(other_state_successor))
                    {
                        if (not successor_policy.mappings().contains(other_state_successor))
                        {
                            has_escape_route = true;
                            break;
                        }
                        stack.push_back(other_state_successor);
                        already_added_states.insert(other_state_successor);
                    }
                }
            }
            if (not has_escape_route)
            {
                if (should_create_policies_graph) fill_policies_graph(successor_policy, "ner");
                continue;
            }
            
            policies_sizes[successor_policy] = policies_sizes[policy] + 1;
            // policies_f_values[successor_policy] = std::max(policies_f_values[policy], policy_heuristic.get_heuristic_value(successor_policy, task.goal_condition, state_heuristic)); // This "path"-max is not required.
            policies_f_values[successor_policy] = policy_heuristic.get_heuristic_value(successor_policy, task.goal_condition, state_heuristic);

            queue.push(successor_policy);
            number_of_inserted_policies++;
            if (should_create_policies_graph) fill_policies_graph(successor_policy, std::to_string(policies_f_values[successor_policy]));
        }
    }
    print_end("Unsolvable.", {});
    return false;
}

int main(int argc, char** argv)
{
    assert(get_memory_limit() <= 8);
    assert(get_time_limit() <= 1800);

    Task task = Task(std::string(argv[1]));
    
    PolicyHeuristic* policy_heuristic_ptr;
    if (std::string(argv[2]) == "weak-count")
    {
        policy_heuristic_ptr = new WeakCount();
    }
    if (std::string(argv[2]) == "weak-nearest")
    {
        policy_heuristic_ptr = new WeakNearest();
    }
    if (std::string(argv[2]) == "weak-delta")
    {
        policy_heuristic_ptr = new WeakDelta();
    }
    if (std::string(argv[2]) == "weak-delta-nearest")
    {
        policy_heuristic_ptr = new WeakDeltaNearest();
    }
    if (std::string(argv[2]) == "weakstrong-delta-nearest")
    {
        policy_heuristic_ptr = new WeakstrongDeltaNearest();
    }
    if (std::string(argv[2]) == "strongweak-delta-nearest")
    {
        policy_heuristic_ptr = new StrongweakDeltaNearest();
    }
    if (std::string(argv[2]) == "strong-count")
    {
        policy_heuristic_ptr = new StrongCount();
    }
    if (std::string(argv[2]) == "strong-nearest")
    {
        policy_heuristic_ptr = new StrongNearest();
    }
    if (std::string(argv[2]) == "strong-delta")
    {
        policy_heuristic_ptr = new StrongDelta();
    }
    if (std::string(argv[2]) == "strong-delta-nearest")
    {
        policy_heuristic_ptr = new StrongDeltaNearest();
    }

    StateHeuristic* state_heuristic_ptr;
    if (std::string(argv[3]) == "blind")
    {
        state_heuristic_ptr = new Blind();
    }
    if (std::string(argv[3]) == "max")
    {
        state_heuristic_ptr = new Max(task.goal_condition, task.actions);
    }
    if (std::string(argv[3]) == "lmcut")
    {
        state_heuristic_ptr = new Lmcut(task.goal_condition, task.actions);
    }
    if (std::string(argv[3]) == "star")
    {
        state_heuristic_ptr = new Star(task.initial_state, task.goal_condition, task.actions);
    }

    for (int i = 4; i < argc; i++)
    {
        if (std::string(argv[i]) == "--policies-graph-file-name")
        {
            should_create_policies_graph = true;
            policies_graph_file.open(std::string(argv[i + 1]));
            i++;
        }
        if (std::string(argv[i]) == "--solution-file-name")
        {
            solution_file_name = std::string(argv[i + 1]);
            i++;
        }
    }

    bool return_flag;
    if (should_create_policies_graph)
    {
        policies_graph_file << "digraph G" << std::endl;
        policies_graph_file << "{" << std::endl;
        return_flag = and_star(task, *policy_heuristic_ptr, *state_heuristic_ptr);
        policies_graph_file << "}" << std::endl;
        policies_graph_file.close();
    }
    else
    {
        return_flag = and_star(task, *policy_heuristic_ptr, *state_heuristic_ptr);
    }
    return return_flag;
}
