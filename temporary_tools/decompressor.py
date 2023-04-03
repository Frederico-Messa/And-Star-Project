import sys; sys.path.insert(0, '.') 
import collections
import python_parser.main
from python_parser.task import Task
from python_parser.state import State
from python_parser.partial_state import PartialState
from python_parser.action import Action
from python_parser.variable import Variable

algorithm = sys.argv[1]
instance = sys.argv[2]
limit = int(sys.argv[3])

file_data = open(f'./raw_results/{algorithm},None,None/{instance}.txt').read().split('\n')
task: Task = python_parser.main.convert_sas_to_task(open(f'./compiled_benchmarks/{instance}.sas').read())
policy: dict[PartialState, Action] = {}
if algorithm == 'fond-sat':
    file_data = file_data[file_data.index('Controller -- CS = Controller State - START'):file_data.index('Controller -- CS = Controller State - END') + 1]
    facts_per_code: dict[str, dict[Variable, int]] = collections.defaultdict(dict)
    for i in range(len(file_data)):
        if file_data[i] == '(CS, Action name, CS)': break
        if len(file_data[i].split(' ')) > 1 and file_data[i].split(' ')[-1].startswith('(n') and not file_data[i].endswith('(ng)'):
            token = ' '.join(file_data[i].split(' ')[:-1]).replace('-NegatedAtom', 'NegatedAtom')
            has_found = False
            for variable in task.variables:
                for value, value_name in enumerate(variable.domain):
                    if value_name == token:
                        facts_per_code[file_data[i].split(' ')[-1][1:-1]][variable] = value
                        has_found = True
                        break
                if has_found: break
            if not has_found:
                print(algorithm, instance, token)
                raise Exception
        if file_data[i].startswith('(n') and file_data[i].count('(') == 2:
            code = file_data[i].split(',')[0][1:]
            action_name = file_data[i].split(',')[1].split('(')[0].split('_DETDUP_')[0] + ' ' + file_data[i][:-2].split('(')[2].replace(',', ' ')
            for action in task.actions:
                if action.name == action_name:
                    policy[PartialState(facts=facts_per_code[code])] = action
                    break
            else:
                print(algorithm, instance, action_name)
                raise Exception
if algorithm == 'prp':
    for i in range(len(file_data)):
        if 'If holds: ' in file_data[i]:
            facts: dict[Variable, int] = {}
            for token in file_data[i].split(' ')[2:]:
                variable_name = token.split(':')[0]
                value = int(token.split(':')[1])
                for variable in task.variables:
                    if variable.name == variable_name:
                        facts[variable] = value
                        break
                else:
                    print(algorithm, instance, variable_name)
                    raise Exception
            partial_state = PartialState(facts=facts)
            action_name = file_data[i + 1].split('/')[0].split(':')[1][1:-1]
            if action_name == 'goal': continue
            for action in task.actions:
                if action.name == action_name:
                    policy[partial_state] = action
                    break
            else:
                print(algorithm, instance, action_name)
                raise Exception

stack: list[State] = [task.initial_state]
done: set[State] = set()
while len(stack) > 0:
    if len(done) + len(stack) > limit: print(f'+{len(done)}', end=''); exit()
    state: State = stack.pop()
    if not state in done:
        for partial_state, action in policy.items():
            if state.models(partial_state):
                for successor_state in state.get_successors(action):
                    if not successor_state.models(task.goal_condition):
                        if successor_state not in done and successor_state not in stack:
                            stack.append(successor_state)
        done.add(state)

if len(sys.argv) > 4 and sys.argv[4] == '--show-policy': print('\n'.join(list(map(str, done))))
else: print(len(done), end='')
