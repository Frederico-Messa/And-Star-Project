#include "./task.hpp"

Task::Task(const str &domain_file_name, const str &task_file_name) : symmetries_method(NO_SYMS)
{
    std::stringstream sas {get_output("translate", "python3 ./dep/translator/translate.py " + domain_file_name + " " + task_file_name)};
    str buffer;

    sas >> buffer;
    assert(buffer == "begin_version");
    sas >> buffer;
    assert(buffer == "3");
    sas >> buffer;
    assert(buffer == "end_version");

    sas >> buffer;
    assert(buffer == "begin_metric");
    sas >> buffer;
    assert(buffer == "0" or buffer == "1");
    bool using_metric = buffer == "1";
    sas >> buffer;
    assert(buffer == "end_metric");

    int number_of_variables;
    sas >> number_of_variables;
    mpz_class current_variable_hash = 1;
    for (int i = 0; i < number_of_variables; i++)
    {
        sas >> buffer;
        assert(buffer == "begin_variable");
        sas >> buffer;
        str variable_name = buffer;
        Variable variable = Variable(variable_name);
        this->variables().push_back(variable);
        sas >> buffer;
        int variable_domain_size;
        sas >> variable_domain_size;
        std::getline(sas, buffer);
        for (int j = 0; j < variable_domain_size; j++)
        {
            std::getline(sas, buffer);
            this->facts().emplace_back(variable, buffer, (j + 1) * current_variable_hash);
            variable.facts().push_back(this->facts().back());
        }
        sas >> buffer;
        assert(buffer == "end_variable");
        current_variable_hash *= variable_domain_size + 1;
    }

    int number_of_mutexes;
    sas >> number_of_mutexes;
    for (int _ = 0; _ < number_of_mutexes; _++)
    {
        sas >> buffer;
        assert(buffer == "begin_mutex_group");
        while (sas >> buffer, buffer != "end_mutex_group");
    }

    sas >> buffer;
    assert(buffer == "begin_state");
    vec<Fact> initial_state_true_facts;
    for (int i = 0; i < number_of_variables; i++)
    {
        int j;
        sas >> j;
        initial_state_true_facts.push_back(this->variables()[i].facts()[j]);
    }
    sas >> buffer;
    assert(buffer == "end_state");
    this->initial_state() = State(initial_state_true_facts);

    sas >> buffer;
    assert(buffer == "begin_goal");
    vec<Fact> goal_condition_true_facts = vec<Fact>(number_of_variables);
    int number_of_goal_condition_facts;
    sas >> number_of_goal_condition_facts;
    for (int _ = 0; _ < number_of_goal_condition_facts; _++)
    {
        int i, j;
        sas >> i;
        sas >> j;
        goal_condition_true_facts[i] = this->variables()[i].facts()[j];
    }
    sas >> buffer;
    assert(buffer == "end_goal");
    this->goal_condition() = PartialState(goal_condition_true_facts);

    str action_name;
    vec<Fact> action_precondition_true_facts;
    vec<PartialState> action_effects;
    int action_cost;
    int number_of_actions_effects;
    sas >> number_of_actions_effects;
    for (int _ = 0; _ < number_of_actions_effects; _++)
    {
        sas >> buffer;
        assert(buffer == "begin_operator");
        std::getline(sas, buffer);
        std::getline(sas, buffer);
        if (buffer != action_name)
        {
            if (action_name != str())
            {
                if (this->action_classes().empty() or this->action_classes().back() != action_name.substr(0, action_name.find(" ")))
                {
                    this->action_classes().push_back(action_name.substr(0, action_name.find(" ")));
                }
                this->actions().emplace_back(action_name, PartialState(action_precondition_true_facts), action_effects, action_cost);
            }
            action_name = buffer;
            action_precondition_true_facts = vec<Fact>(number_of_variables);
            action_effects = vec<PartialState>();
            action_cost = NONE;
        }
        vec<Fact> action_effect_true_facts = vec<Fact>(number_of_variables);
        int action_number_of_precondition_raw_facts;
        sas >> action_number_of_precondition_raw_facts;
        for (int _ = 0; _ < action_number_of_precondition_raw_facts; _++)
        {
            int i, j;
            sas >> i;
            sas >> j;
            action_precondition_true_facts[i] = this->variables()[i].facts()[j];
        }
        int action_effect_number_of_atomic_effects;
        sas >> action_effect_number_of_atomic_effects;
        for (int _ = 0; _ < action_effect_number_of_atomic_effects; _++)
        {
            int action_effect_atomic_effect_condition_number_of_facts;
            sas >> action_effect_atomic_effect_condition_number_of_facts;
            assert(action_effect_atomic_effect_condition_number_of_facts == 0);
            int i;
            sas >> i;
            int j;
            sas >> j;
            if (j != NONE)
            {
                action_precondition_true_facts[i] = this->variables()[i].facts()[j];
            }
            sas >> j;
            assert(action_effect_true_facts[i].is_none());
            action_effect_true_facts[i] = this->variables()[i].facts()[j];
        }
        action_effects.emplace_back(action_effect_true_facts);
        sas >> action_cost;
        if (not using_metric)
        {
            action_cost = 1;
        }
        assert(action_cost == 1);
        sas >> buffer;
        assert(buffer == "end_operator");
    }
    if (action_name != str())
    {
        if (this->action_classes().empty() or this->action_classes().back() != action_name.substr(0, action_name.find(" ")))
        {
            this->action_classes().push_back(action_name.substr(0, action_name.find(" ")));
        }
        this->actions().emplace_back(action_name, PartialState(action_precondition_true_facts), action_effects, action_cost);
    }

    sas >> buffer;
    assert(buffer == "0");
};

void Task::compute_gagg(const opt<double> &opt_time_limit)
{
    str graph_string;
    int i = 1;
    map<Fact, int> facts_vertices;
    map<Action, int> actions_vertices;
    for (const Fact &fact: this->facts())
    {
        facts_vertices[fact] = i;
        graph_string += ";"; i++;
    }
    for (const Action &action: this->actions())
    {
        int j = i;

        for (const PartialState &effect: action.effects())
        {
            for (const Fact &fact: effect.true_facts())
            {
                if (not fact.is_none())
                {
                    graph_string += std::to_string(facts_vertices[fact]) + ","; // adds edge i -> facts_vertices[fact]
                }
            }
            graph_string += ";"; i++;
        }

        for (int k = j; k < i; k++)
        {
            graph_string += std::to_string(k) + ","; // adds edge i -> k
        }
        for (const Fact &fact: action.precondition().true_facts())
        {
            if (not fact.is_none())
            {
                graph_string += std::to_string(facts_vertices[fact]) + ","; // adds edge i -> facts_vertices[fact]
            }
        }
        actions_vertices[action] = i;
        graph_string += ";"; i++;
    }
    for (const Variable &variable: this->variables())
    {
        for (const Fact &fact: variable.facts())
        {
            graph_string += std::to_string(facts_vertices[fact]) + ","; // adds edge i -> facts_vertices[fact]
        }
        graph_string += ";"; i++;
    }
    int n = i - 1;

    str partitions_string;
    set<Fact> goal_facts;
    for (const Fact &fact: this->goal_condition().true_facts())
    {
        if (not fact.is_none())
        {
            partitions_string += std::to_string(facts_vertices[fact]) + ",";
            goal_facts.insert(fact);
        }
    }
    partitions_string += "|";
    for (const Fact &fact: this->facts())
    {
        if (not goal_facts.contains(fact))
        {
            partitions_string += std::to_string(facts_vertices[fact]) + ",";
        }
    }
    partitions_string += "|";
    for (const str &action_class: this->action_classes())
    {
        for (const Action &action: this->actions())
        {
            if (action.name().substr(0, action.name().find(" ")) == action_class)
            {
                partitions_string += std::to_string(actions_vertices[action]) + ",";
            }
        }
        partitions_string += "|";
    }

    str dreadnaut_command = "Asd*=13 n=" + std::to_string(n) + " k=0 " + std::to_string(n) + " y=" + std::to_string(n) + " $=1g" + graph_string + " f=[" + partitions_string + "] a-ml=0x q";

    std::stringstream dreadnaut_input;
    dreadnaut_input << dreadnaut_command << "\n";

    std::stringstream dreadnaut_output {get_output("dreadnaut", "dreadnaut", dreadnaut_input.str(), opt_time_limit)};

    vec<str> splitted_dreadnaut_output;
    str line;
    while (std::getline(dreadnaut_output, line) and !line.empty())
    {
        splitted_dreadnaut_output.push_back(line);
    }
    assert(splitted_dreadnaut_output.size() >= 4);
    assert(splitted_dreadnaut_output[0] == "[fixing partition]");
    assert(splitted_dreadnaut_output[splitted_dreadnaut_output.size() - 3].contains("gen"));
    assert(splitted_dreadnaut_output[splitted_dreadnaut_output.size() - 2].contains("cpu time ="));
    assert(splitted_dreadnaut_output[splitted_dreadnaut_output.size() - 1].contains("invarproc \"adjacencies_sg\" succeeded"));

    this->opt_gagg_str = {{splitted_dreadnaut_output.begin() + 1, splitted_dreadnaut_output.end() - 3}};

    vec<map<Fact, Fact>> gagg;
    for (const str &permutation: *this->opt_gagg_str)
    {
        gagg.emplace_back();
        for (const str &sub_permutation: split(permutation.substr(1, permutation.size() - 2), ")("))
        {
            vec<Fact> sub_permutation_facts;
            for (const str &fact_vertex_str: split(sub_permutation, " "))
            {
                int fact_vertex = std::stoi(fact_vertex_str);
                if (fact_vertex <= this->facts().size())
                {
                    sub_permutation_facts.push_back(this->facts()[fact_vertex - 1]);
                }
            }
            for (int i = 0; i < sub_permutation_facts.size(); i++)
            {
                gagg.back()[sub_permutation_facts[i]] = sub_permutation_facts[(i + 1) % sub_permutation_facts.size()];
            }
        }
        if (gagg.back().empty())
        {
            gagg.pop_back();
        }
    }
    this->opt_gagg = gagg;
}

void Task::compute_sgs(const opt<double> &opt_time_limit)
{
    assert(this->opt_gagg_str.has_value());
    assert(not this->opt_gagg_str->empty());

    std::stringstream gap_input;
    bool first = true;
    for (str permutation: *this->opt_gagg_str)
    {
        if (not first) {gap_input << ",";} first = false;
        std::replace(permutation.begin(), permutation.end(), ' ', ',');
        gap_input << permutation;
    }

    std::stringstream gap_output {get_output("gap", "./src/gap.sh " + std::to_string(this->facts().size()), gap_input.str(), opt_time_limit)};

    this->opt_sgs_base_facts.emplace();
    this->opt_sgs_inverse_transversals.emplace();
    this->opt_sgs_stabilizing_order_of_facts.emplace();

    int buffer;

    gap_output >> buffer;
    int sgs_base_size = buffer;
    set<Fact> stabilized_facts;
    for (int _ = 0; _ < sgs_base_size; _++)
    {
        while (gap_output >> buffer, buffer != -1)
        {
            Fact fact = this->facts()[buffer - 1];
            if (not stabilized_facts.contains(fact))
            {
                this->opt_sgs_stabilizing_order_of_facts->push_back(fact);
                stabilized_facts.insert(fact);
            }
        }

        gap_output >> buffer;
        Fact sgs_base_fact = this->facts()[buffer - 1];
        this->opt_sgs_base_facts->insert(sgs_base_fact);
        this->opt_sgs_stabilizing_order_of_facts->push_back(sgs_base_fact);
        stabilized_facts.insert(sgs_base_fact);

        for (int _ = 0; _ < this->facts().size(); _++)
        {
            gap_output >> buffer;
            bool sgs_transversal_has_element = buffer;
            if (sgs_transversal_has_element)
            {
                opt_sgs_inverse_transversals->operator[](sgs_base_fact).emplace_back();
                for (const Fact &source_fact: this->facts())
                {
                    gap_output >> buffer;
                    Fact target_fact = this->facts()[buffer - 1];
                    opt_sgs_inverse_transversals->operator[](sgs_base_fact).back()[source_fact] = target_fact;
                }
            }
        }
    }
    for (const Fact &fact: this->facts())
    {
        if (not stabilized_facts.contains(fact))
        {
            this->opt_sgs_stabilizing_order_of_facts->push_back(fact);
        }
    }
}

set<Fact> Task::get_canonical_facts_set(const set<Fact> &facts_set) const
{
    if (this->symmetries_method == NO_SYMS)
    {
        return facts_set;
    }
    else
    if (this->symmetries_method == GREEDY_SYMS)
    {
        assert(this->opt_gagg.has_value());

        auto facts_sets_lt = [](const set<Fact> &facts_set_1, const set<Fact> &facts_set_2)
        {
            vec<int> facts_ids_set_1;
            vec<int> facts_ids_set_2;
            for (const Fact &fact: facts_set_1)
            {
                facts_ids_set_1.push_back(fact.id);
            }
            for (const Fact &fact: facts_set_2)
            {
                facts_ids_set_2.push_back(fact.id);
            }
            std::sort(facts_ids_set_1.begin(), facts_ids_set_1.end());
            std::sort(facts_ids_set_2.begin(), facts_ids_set_2.end());
            assert(facts_ids_set_1.size() == facts_ids_set_2.size());
            for (int i = 0; i < facts_ids_set_1.size(); i++)
            {
                if (facts_ids_set_1[i] < facts_ids_set_2[i])
                {
                    return true;
                }
                if (facts_ids_set_1[i] > facts_ids_set_2[i])
                {
                    return false;
                }
            }
            return false;
        };

        set<Fact> greedy_canonical_facts_set = facts_set;

        bool reached_fixed_point = false;
        while (not reached_fixed_point)
        {
            reached_fixed_point = true;
            for (const map<Fact, Fact> &generator: this->opt_gagg.value())
            {
                set<Fact> next_facts_set;
                for (const Fact &fact: greedy_canonical_facts_set)
                {
                    Fact next_fact = generator.contains(fact)? generator.at(fact): fact;
                    next_facts_set.insert(next_fact);
                }
                if (facts_sets_lt(next_facts_set, greedy_canonical_facts_set))
                {
                    greedy_canonical_facts_set.swap(next_facts_set);
                    reached_fixed_point = false;
                }
            }
        }

        return greedy_canonical_facts_set;
    }
    else
    if (this->symmetries_method == PERFECT_SYMS)
    {
        assert(this->opt_sgs_base_facts.has_value());

        int target_size = facts_set.size();
        set<set<Fact>> current_facts_sets = {facts_set};
        set<Fact> canonical_facts_set;
        for (const Fact &cursor_fact: *this->opt_sgs_stabilizing_order_of_facts)
        {
            if (this->opt_sgs_base_facts->contains(cursor_fact))
            {
                set<set<Fact>> next_facts_sets;
                for (const map<Fact, Fact> &permutation: this->opt_sgs_inverse_transversals->operator[](cursor_fact))
                {
                    for (const set<Fact> &source_facts_set: current_facts_sets)
                    {
                        set<Fact> target_facts_set;
                        for (const Fact &source_fact: source_facts_set)
                        {
                            Fact target_fact = permutation.at(source_fact);
                            target_facts_set.insert(target_fact);
                        }
                        next_facts_sets.insert(target_facts_set);
                    }
                }
                current_facts_sets.swap(next_facts_sets);
            }

            set<set<Fact>> facts_sets_with_cursor_fact;
            for (const set<Fact> &facts_set: current_facts_sets)
            {
                if (facts_set.contains(cursor_fact))
                {
                    facts_sets_with_cursor_fact.insert(facts_set);
                }
            }

            if (not facts_sets_with_cursor_fact.empty())
            {
                canonical_facts_set.insert(cursor_fact);
                if (canonical_facts_set.size() == target_size)
                {
                    return canonical_facts_set;
                }
                current_facts_sets.swap(facts_sets_with_cursor_fact);
            }
        }
        assert(false);
    }
    else
    {
        assert(false);
    }
}

opt<vec<str>> Task::opt_gagg_str;
opt<vec<map<Fact, Fact>>> Task::opt_gagg;
opt<set<Fact>> Task::opt_sgs_base_facts;
opt<map<Fact, vec<map<Fact, Fact>>>> Task::opt_sgs_inverse_transversals;
opt<vec<Fact>> Task::opt_sgs_stabilizing_order_of_facts;
