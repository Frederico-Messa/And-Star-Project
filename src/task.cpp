#pragma once
#include "./general.cpp"

#include "./partial_state.cpp"
#include "./state.cpp"
#include "./action.cpp"
#include "./fact.cpp"
#include "./variable.cpp"

class Task : public Object
{
public:
    using Object::Object;

    State initial_state;
    PartialState goal_condition;
    std::vector<Action> actions;

    Task(const std::string &sas_file_name)
    {
        std::string buffer;
        std::ifstream sas_file;
        sas_file.open(sas_file_name);

        sas_file >> buffer;
        assert(buffer == "begin_version");
        sas_file >> buffer;
        assert(buffer == "3");
        sas_file >> buffer;
        assert(buffer == "end_version");

        sas_file >> buffer;
        assert(buffer == "begin_metric");
        sas_file >> buffer;
        assert(buffer == "0" or buffer == "1");
        bool using_metric = buffer == "1";
        sas_file >> buffer;
        assert(buffer == "end_metric");

        int number_of_variables;
        sas_file >> number_of_variables;
        std::vector<std::vector<Fact>> facts;
        mpz_class current_variable_hash = 1;
        for (int i = 0; i < number_of_variables; i++)
        {
            sas_file >> buffer;
            assert(buffer == "begin_variable");
            sas_file >> buffer;
            std::string variable_name = buffer;
            sas_file >> buffer;
            int variable_domain_size;
            sas_file >> variable_domain_size;
            Variable variable = Variable(variable_name, variable_domain_size);
            std::getline(sas_file, buffer);
            facts.push_back({});
            for (int j = 0; j < variable_domain_size; j++)
            {
                std::getline(sas_file, buffer);
                facts.back().emplace_back(variable, buffer, (j + 1) * current_variable_hash);
            }
            sas_file >> buffer;
            assert(buffer == "end_variable");
            current_variable_hash *= variable_domain_size + 1;
        }

        int number_of_mutexes;
        sas_file >> number_of_mutexes;
        for (int _ = 0; _ < number_of_mutexes; _++)
        {
            sas_file >> buffer;
            assert(buffer == "begin_mutex_group");
            while (sas_file >> buffer, buffer != "end_mutex_group");
        }

        sas_file >> buffer;
        assert(buffer == "begin_state");
        std::vector<Fact> initial_state_true_facts;
        for (int i = 0; i < number_of_variables; i++)
        {
            int j;
            sas_file >> j;
            initial_state_true_facts.push_back(facts[i][j]);
        }
        sas_file >> buffer;
        assert(buffer == "end_state");
        this->initial_state = State(initial_state_true_facts);

        sas_file >> buffer;
        assert(buffer == "begin_goal");
        std::vector<Fact> goal_condition_true_facts = std::vector<Fact>(number_of_variables);
        int number_of_goal_condition_facts;
        sas_file >> number_of_goal_condition_facts;
        for (int _ = 0; _ < number_of_goal_condition_facts; _++)
        {
            int i, j;
            sas_file >> i;
            sas_file >> j;
            goal_condition_true_facts[i] = facts[i][j];
        }
        sas_file >> buffer;
        assert(buffer == "end_goal");
        this->goal_condition = PartialState(goal_condition_true_facts);

        std::string action_name;
        std::vector<Fact> action_precondition_true_facts;
        std::vector<PartialState> action_effects;
        int action_cost;
        int number_of_actions_effects;
        sas_file >> number_of_actions_effects;
        for (int _ = 0; _ < number_of_actions_effects; _++)
        {
            sas_file >> buffer;
            assert(buffer == "begin_operator");
            std::getline(sas_file, buffer);
            std::getline(sas_file, buffer);
            if (buffer != action_name)
            {
                if (action_name != std::string())
                {
                    actions.emplace_back(action_name, PartialState(action_precondition_true_facts), action_effects, action_cost);
                }
                action_name = buffer;
                action_precondition_true_facts = std::vector<Fact>(number_of_variables);
                action_effects = std::vector<PartialState>();
                action_cost = NONE;
            }
            std::vector<Fact> action_effect_true_facts = std::vector<Fact>(number_of_variables);
            int action_number_of_precondition_raw_facts;
            sas_file >> action_number_of_precondition_raw_facts;
            for (int _ = 0; _ < action_number_of_precondition_raw_facts; _++)
            {
                int i, j;
                sas_file >> i;
                sas_file >> j;
                action_precondition_true_facts[i] = facts[i][j];
            }
            int action_effect_number_of_atomic_effects;
            sas_file >> action_effect_number_of_atomic_effects;
            for (int _ = 0; _ < action_effect_number_of_atomic_effects; _++)
            {
                int action_effect_atomic_effect_condition_number_of_facts;
                sas_file >> action_effect_atomic_effect_condition_number_of_facts;
                assert(action_effect_atomic_effect_condition_number_of_facts == 0);
                int i;
                sas_file >> i;
                int j;
                sas_file >> j;
                if (j != NONE)
                {
                    action_precondition_true_facts[i] = facts[i][j];
                }
                sas_file >> j;
                action_effect_true_facts[i] = facts[i][j];
            }
            action_effects.emplace_back(action_effect_true_facts);
            sas_file >> action_cost;
            if (not using_metric)
            {
                action_cost = 1;
            }
            assert(action_cost == 1);
            sas_file >> buffer;
            assert(buffer == "end_operator");
        }
        if (action_name != std::string())
        {
            actions.push_back(Action(action_name, PartialState(action_precondition_true_facts), action_effects, action_cost));
        }

        sas_file >> buffer;
        assert(buffer == "0");
        sas_file.close();
    };
};
