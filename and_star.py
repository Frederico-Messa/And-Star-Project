#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import tap
import argcomplete
import subprocess
import resource
import time

class ArgParsingNamespace(tap.Tap):
    domain_file_path: str
    problem_file_path: str
    time_limit: float
    memory_limit: float
    sound_and_complete: bool
    optimal: bool

    def configure(self) -> None:
        self.add_argument("domain_file_path", type=str)
        self.add_argument("problem_file_path", type=str)
        self.add_argument("-m", "--memory-limit", help="(in GB)", type=float, required=False)
        self.add_argument("-t", "--time-limit", help="(in minutes)", type=float, required=False)
        self.add_argument("--sound-and-complete", action="store_true", default=False)
        self.add_argument("--optimal", help="implies also --sound-and-complete", action="store_true", default=False)

apn = ArgParsingNamespace()
argcomplete.autocomplete(apn)
apn.parse_args()

def get_and_star_splitted_command() -> list[str]:
    global apn

    policy_heuristic = 'delta-pathmax'
    state_heuristic = 'lmcut'

    if apn.optimal:
        policy_ordering = 'best-first'
        signaturing_method = 'in-out'
        symmetries_detection_activation = 'false'
        deadlock_handling = 'fix'
    elif apn.sound_and_complete:
        policy_ordering = '2-weighted-first'
        signaturing_method = 'in-out'
        symmetries_detection_activation = 'false'
        deadlock_handling = 'fix'
    else:
        policy_ordering = '2-weighted-first'
        signaturing_method = 'out'
        symmetries_detection_activation = 'true'
        deadlock_handling = 'true'

    return [
        f'./and_star',
        f'{apn.domain_file_path}',
        f'{apn.problem_file_path}',
        f'{policy_heuristic}',
        f'{state_heuristic}',
        f'{policy_ordering}',
        f'{signaturing_method}',
        f'{symmetries_detection_activation}',
        f'{deadlock_handling}',
    ]

def limit_virtual_memory():
    if apn.memory_limit != None:
        memory_limit_in_bytes = round(apn.memory_limit * 1000 * 1000 * 1000)
        resource.setrlimit(resource.RLIMIT_AS, (memory_limit_in_bytes, memory_limit_in_bytes))

process = subprocess.Popen(get_and_star_splitted_command(), preexec_fn=limit_virtual_memory, text=True)

try:
    if apn.time_limit != None:
        process.communicate(timeout=60 * apn.time_limit)
    else:
        process.communicate()
except subprocess.TimeoutExpired:
    process.terminate()
    time.sleep(0.25)
    process.kill()
    print('Time limit has been reached.')
