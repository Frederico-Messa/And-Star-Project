from collections import defaultdict, deque
from python_parser.task import Task
from python_parser.variable import Variable
from python_parser.action import Action
from python_parser.partial_state import PartialState
from python_parser.state import State
from python_parser.effect import Effect
from python_parser.atomic_effect import AtomicEffect

def convert_sas_to_task(sas: str) -> Task:
    sas_lines = deque(sas.split('\n'))

    assert sas_lines.popleft() == 'begin_version'
    assert sas_lines.popleft() == '3'
    assert sas_lines.popleft() == 'end_version'

    assert sas_lines.popleft() == 'begin_metric'
    assert sas_lines[0] in ['0', '1']
    using_metric = True if sas_lines.popleft() == '1' else False
    assert sas_lines.popleft() == 'end_metric'

    number_of_variables = int(sas_lines.popleft())
    variables: list[Variable] = []
    variable_id = 1
    for _ in range(number_of_variables):
        assert sas_lines.popleft() == 'begin_variable'
        variable_name = sas_lines.popleft()
        variable_axiom_layer = int(sas_lines.popleft())
        variable_domain_size = int(sas_lines.popleft())
        variable_domain: list[str] = []
        for _ in range(variable_domain_size):
            variable_domain.append(sas_lines.popleft())
        assert sas_lines.popleft() == 'end_variable'
        variable = Variable(name=variable_name, domain=tuple(variable_domain), id=variable_id)
        variables.append(variable)
        variable_id *= variable_domain_size + 1
    PartialState.task_variables = tuple(variables)

    number_of_mutexes = int(sas_lines.popleft())
    mutexes = set()
    for _ in range(number_of_mutexes):
        assert sas_lines.popleft() == 'begin_mutex_group'
        mutex_number_of_facts = int(sas_lines.popleft())
        mutex_facts: dict[Variable, str] = defaultdict(lambda: None)
        for _ in range(mutex_number_of_facts):
            l = deque(map(int, sas_lines.popleft().split(' ')))
            mutex_fact_variable = variables[l.popleft()]
            mutex_facts[mutex_fact_variable] = l.popleft()
        assert sas_lines.popleft() == 'end_mutex_group'
        mutex = PartialState(facts=mutex_facts)
        mutexes.add(mutex)

    assert sas_lines.popleft() == 'begin_state'
    initial_state_facts: dict[Variable, str] = defaultdict(lambda: None)
    for variable in variables:
        initial_state_facts[variable] = int(sas_lines.popleft())
    assert sas_lines.popleft() == 'end_state'
    initial_state = State(facts=initial_state_facts)

    assert sas_lines.popleft() == 'begin_goal'
    goal_condition_number_of_facts = int(sas_lines.popleft())
    goal_condition_facts: dict[Variable, str] = defaultdict(lambda: None)
    for _ in range(goal_condition_number_of_facts):
        l = deque(map(int, sas_lines.popleft().split(' ')))
        goal_condition_fact_variable = variables[l.popleft()]
        goal_condition_facts[goal_condition_fact_variable] = l.popleft()
    assert sas_lines.popleft() == 'end_goal'
    goal_condition = PartialState(facts=goal_condition_facts)

    number_of_actions = int(sas_lines.popleft())
    actions: list[Action] = []
    last_action: Action|None = None
    for action_i in range(number_of_actions):
        assert sas_lines.popleft() == 'begin_operator'
        action_name = sas_lines.popleft()
        action_number_of_precondition_raw_facts = int(sas_lines.popleft())
        action_precondition_facts: dict[Variable, str] = defaultdict(lambda: None)
        for _ in range(action_number_of_precondition_raw_facts):
            l = deque(map(int, sas_lines.popleft().split(' ')))
            action_precondition_fact_variable = variables[l.popleft()]
            action_precondition_facts[action_precondition_fact_variable] = l.popleft()
        action_effect_number_of_atomic_effects = int(sas_lines.popleft())
        action_effect_atomic_effects: set[AtomicEffect] = set()
        for _ in range(action_effect_number_of_atomic_effects):
            l = deque(map(int, sas_lines.popleft().split(' ')))
            action_effect_atomic_effect_condition_number_of_facts = l.popleft()
            if action_effect_atomic_effect_condition_number_of_facts > 0:
                raise Exception("Verify wheter effect conditions are really working.")
            action_effect_atomic_effect_condition_facts: dict[Variable, str] = {}
            # for _ in range(action_effect_atomic_effect_condition_number_of_facts):
            #     action_effect_atomic_effect_condition_fact_variable = variables[l.popleft()]
            #     action_effect_atomic_effect_condition_facts[action_effect_atomic_effect_condition_fact_variable] = l.popleft()
            action_effect_atomic_effect_condition = PartialState(facts=action_effect_atomic_effect_condition_facts)
            action_effect_atomic_effect_fact_variable = variables[l.popleft()]
            x = l.popleft()
            if x != -1:
                action_precondition_facts[action_effect_atomic_effect_fact_variable] = x
            action_effect_atomic_effect = AtomicEffect(condition=action_effect_atomic_effect_condition, affected_variable=action_effect_atomic_effect_fact_variable, assignment_value=l.popleft())
            action_effect_atomic_effects.add(action_effect_atomic_effect)
        action_effect = Effect(atomic_effects=frozenset(action_effect_atomic_effects))
        action_effects = set([action_effect])
        action_cost = int(sas_lines.popleft())
        action_id = action_i * variable_id
        if not using_metric:
            action_cost = 1
        assert action_cost == 1 # Source currently not working with other action costs.
        assert sas_lines.popleft() == 'end_operator'
        action_precondition = PartialState(facts=action_precondition_facts)
        if last_action != None and last_action.name == action_name:
            assert last_action.cost == action.cost
            assert last_action.precondition == action_precondition
            action_effects.update(last_action.effects)
            actions.pop()
        action = Action(name=action_name, precondition=action_precondition, effects=frozenset(action_effects), cost=action_cost, is_an_axiom=False, id=action_id)
        actions.append(action)
        last_action = action

    number_of_axioms = int(sas_lines.popleft())
    if number_of_axioms > 0:
        raise Exception("Verify wheter axioms are really equivalent to actions.")

    task = Task(variables=tuple(variables), actions=tuple(actions), initial_state=initial_state, goal_condition=goal_condition, mutexes=frozenset(mutexes))

    return task
