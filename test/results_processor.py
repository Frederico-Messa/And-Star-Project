import sys
import os
import natsort
import subprocess

# limit = sys.argv[1]
limit = '10000'

def call_counter(algorithm: str, instance: str):
    if instance.startswith('tireworld-triangle') and not instance.split(',')[1].split('.')[0] in ['p1', 'p2', 'p3']: return 'Too Many'
    process = subprocess.Popen(['python3', './temporary_tools/decompressor.py', algorithm, instance, limit], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr  = process.communicate('')
    result = stdout.decode() + stderr.decode()
    return result

def simplify(string: str):
    return string.replace('Time Limit reached.', 'T').replace('Memory Limit reached.', 'M').replace('Unsolvable.', 'U').replace('Solved.', 'S')

if not os.path.exists('./processed_results/'):
    os.mkdir('./processed_results/')

for label in os.listdir('./raw_results/'):
    print(label)
    new_results = []
    instances: list[str] = natsort.natsorted(os.listdir(f'./raw_results/{label}'))
    for instance in instances:
        if instance.endswith('.policy'): continue
        file_data = open(f'./raw_results/{label}/{instance}').read().split('\n')
        new_result = [instance[:-4]]
        if 'and-star' in label:
            f = None
            for line in file_data:
                if line == '': continue
                if 'New f:' in line: f = int(line.split(': ')[-1]); continue
                if 'cache' in line.lower(): continue
                if 'Policy' in line: continue
                if '->' in line: continue
                if 'bad_alloc' in line: new_result.append('M'); break
                new_result.append(simplify(line.split(': ')[-1]))
            if len(new_result) == 1: new_result.append('T')
            # new_result.append(str(f))
        if 'fond-sat' in label:
            if any(('Solved with ' in line) for line in file_data):
                for line in file_data:
                    if 'Solved with ' in line:
                        new_result.append(str(int(line.split(' ')[2]) - 1))
                    if 'Elapsed total time' in line:
                        new_result.append(line.split(': ')[1])
                new_result.append(f'{call_counter("fond-sat", instance[:-4])}')
            elif '-> OUT OF TIME' in file_data:
                new_result.append('T')
                new_result.append('T')
                new_result.append('T')
            else:
                new_result.append('?')
                new_result.append('?')
                new_result.append('?')
                print('fond-sat', instance)
        if 'prp' in label:
            # if 'Strong cyclic plan found.' in file_data or 'Plan found, but not strong cyclic.' in file_data:
            if 'Strong cyclic plan found.' in file_data:
                for line in file_data:
                    if 'State-Action Pairs:' in line and not 'Forbidden' in line:
                        new_result.append(str(int(line.split(': ')[1]) - 1))
                    if 'Total time:' in line:
                        new_result.append(line.split(': ')[1][:-1])
                new_result.append(f'{call_counter("prp", instance[:-4])}')
            elif 'No solution -- aborting repairs.' in file_data:
                new_result.append('U')
                new_result.append('U')
                new_result.append('U')
            elif 'Memory limit has been reached.' in file_data:
                new_result.append('M')
                new_result.append('M')
                new_result.append('M')
            elif any(('Killed' in line) for line in file_data):
                new_result.append('T')
                new_result.append('T')
                new_result.append('T')
            else:
                new_result.append('?')
                new_result.append('?')
                new_result.append('?')
                print('prp', instance)
        new_results.append(','.join(new_result))
        open(f'./processed_results/{label}.csv', 'w').write('\n'.join(new_results))
