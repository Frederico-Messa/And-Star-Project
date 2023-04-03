import os
import subprocess
import resource
import time
import datetime
import random
from typing import Generator
from threading import Thread, Lock, Semaphore

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

number_of_threads = 6
time_limit = 30
memory_limit = 8

threads_semaphore = Semaphore(number_of_threads)
folder_creation_lock = Lock()
process_creation_lock = Lock()
fondsat_lock = Lock()
prp_lock = Lock()
print_lock = Lock()

def limit_virtual_memory(): resource.setrlimit(resource.RLIMIT_AS, (memory_limit * 1000 * 1000 * 1000, memory_limit * 1000 * 1000 * 1000))
def limit_cpu_time(): resource.setrlimit(resource.RLIMIT_CPU, (time_limit * 60, time_limit * 60))
def apply_limits(): limit_virtual_memory(); limit_cpu_time()

def get_args_list(benchmark_sas: str, algorithm: str, fond_heuristic: str|None, classical_planning_heuristic: str|None) -> list[str]:
    domain = benchmark_sas.split(',')[0]
    instance_pddl = benchmark_sas.split(',')[1].replace('.sas', '.pddl')
    domain_pddl = 'domain.pddl' if not 'faults' in benchmark_sas else f'd{instance_pddl[1:]}'

    if algorithm == 'and-star':
        return list(map(str, [
            './and_star',
            f'./compiled_benchmarks/{benchmark_sas}',
            fond_heuristic,
            classical_planning_heuristic,
            # '--solution-file-name',
            # f'./raw_results/{algorithm},{fond_heuristic},{classical_planning_heuristic}/{benchmark_sas[:-4]}.policy'
        ]))

    if algorithm == 'fond-sat':
        return list(map(str, [
            'python3',
            './planner_fondsat/src/main.py',
            f'./benchmarks/{domain}/{domain_pddl}',
            f'./benchmarks/{domain}/{instance_pddl}',
            '--show-policy',
            '--time_limit',
            f'{time_limit * 60}',
            '--mem_limit',
            f'{memory_limit * 1000}',
            '--name-tmp',
            benchmark_sas[:-4]
        ]))

    if algorithm == 'prp':
        return list(map(str, [
            './planner_prp/src/prp',
            f'./benchmarks/{domain}/{domain_pddl}',
            f'./benchmarks/{domain}/{instance_pddl}',
            '--dump-policy',
            '2'
        ]))

def run_thread(benchmark_sas: str, algorithm: str, fond_heuristic: str|None = None, classical_planning_heuristic: str|None = None) -> None:
    global threads_semaphore, folder_creation_lock, process_creation_lock, fondsat_lock, prp_lock, print_lock

    save_folder = f'./raw_results/{algorithm},{fond_heuristic},{classical_planning_heuristic}'
    if os.path.exists(f'{save_folder}/{benchmark_sas[:-4]}.txt'): threads_semaphore.release(); return

    folder_creation_lock.acquire()
    if not os.path.exists(f'{save_folder}'): os.makedirs(f'{save_folder}')
    folder_creation_lock.release()

    if algorithm == 'fond-sat': fondsat_lock.acquire()
    if algorithm == 'prp': prp_lock.acquire()

    process_creation_lock.acquire(); time.sleep(0.1)
    with open('./log.txt', 'a') as log_file: log_file.write(f'{datetime.datetime.now(), (benchmark_sas, algorithm, fond_heuristic, classical_planning_heuristic)}\n')
    process = subprocess.Popen(get_args_list(benchmark_sas, algorithm, fond_heuristic, classical_planning_heuristic), stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, preexec_fn=apply_limits)
    process_creation_lock.release()

    process._sigint_wait_secs = 0
    stdout: bytes; stderr: bytes; stdout, stderr  = process.communicate()
    result = stdout.decode() + stderr.decode() + ((open('./policy.out').read() if os.path.exists('./policy.out') else 'no_file') if algorithm == 'prp' else '')
    if algorithm == 'prp' and os.path.exists('./policy.out'): os.remove('./policy.out')

    print_lock.acquire(); time.sleep(0.1)
    print(benchmark_sas, algorithm, fond_heuristic, classical_planning_heuristic)
    open(f'{save_folder}/{benchmark_sas[:-4]}.txt', 'w').write(result)
    print_lock.release()

    if algorithm == 'fond-sat': fondsat_lock.release()
    if algorithm == 'prp': prp_lock.release()
    threads_semaphore.release()

def get_white_list() -> set[str]:
    class UniversalSet:
        def __contains__(self, key): return True
    try: return set(open('./white_list.txt').read().split('\n'))
    except: return UniversalSet()

def get_benchmark_sass() -> Generator[str, None, None]:
    benchmark_sass = os.listdir(f'./compiled_benchmarks')
    white_list = get_white_list()
    for benchmark_sas in benchmark_sass:
        if not benchmark_sas in white_list: continue
        yield benchmark_sas

def get_threads_for_benchmark_sas(benchmark_sas: str) -> Generator[Thread, None, None]:
    if os.path.exists('./planner_fondsat'): yield Thread(target=run_thread, args=(benchmark_sas, 'fond-sat'))
    if os.path.exists('./planner_prp'    ): yield Thread(target=run_thread, args=(benchmark_sas, 'prp'     ))
    for fond_heuristic in ['weak-count', 'strong-count', 'weak-nearest', 'strong-delta', 'strongweak-delta-nearest']:
        for classical_planning_heuristic in (['blind'] if ('count' in fond_heuristic) else ['max', 'lmcut', 'star']):
            yield Thread(target=run_thread, args=(benchmark_sas, 'and-star', fond_heuristic, classical_planning_heuristic))

threads: list[Thread] = []
for benchmark_sas in get_benchmark_sass():
    for thread in get_threads_for_benchmark_sas(benchmark_sas):
        threads.append(thread)
random.shuffle(threads)

start_datetime = datetime.datetime.now()
total_number_of_tasks = len(threads)

for i, thread in enumerate(threads):
    threads_semaphore.acquire()
    thread.start()

    if i >= number_of_threads:
        elapsed_time = datetime.datetime.now() - start_datetime
        expected_end = datetime.datetime.now() + elapsed_time / (i + 1 - number_of_threads) * (total_number_of_tasks - (i + 1 - number_of_threads))
        print()
        print(f'{bcolors.BOLD}( {i + 1 - number_of_threads} / {total_number_of_tasks} ){bcolors.ENDC} | Expected end: {bcolors.BOLD}{expected_end}{bcolors.ENDC}')
        print()

for thread in threads:
    thread.join()

