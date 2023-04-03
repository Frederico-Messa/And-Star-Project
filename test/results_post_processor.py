import os
import statistics
import math

def mean(l):
    if len(l) == 0: return '-'
    else: return f'{statistics.geometric_mean(l):,.2f}'

def stdev(l):
    if len(l) == 0: return '-'
    else: return f'{math.exp(statistics.stdev(map(math.log, l))):,.2f}'

configurations = [file[:-4] for file in os.listdir('./processed_results')]
print(configurations)
all_results = {configuration: [line.split(',') for line in open(f'./processed_results/{configuration}.csv').read().split('\n')] for configuration in configurations}

ipc_fond_domains = (
    'acrobatics',
    'beam-walk',
    'blocksworld-original',
    'blocksworld-advanced',
    'chain-of-rooms',
    'earth-observation',
    'elevators',
    'faults',
    'first-responders',
    'tireworld-triangle',
    'zenotravel'
)
new_fond_domains = (
    'doors',
    'islands',
    'miner',
    'tireworld-spiky',
    'tireworld-truck'
)
domains = ipc_fond_domains + new_fond_domains
instances_per_domain = {domain: [instance.split(',')[1][:-4] for instance in os.listdir('./compiled_benchmarks') if instance.split(',')[0] == domain] for domain in domains}

post_processed_results: list[list[str]] = []
for domain in domains:
    intersection_instances = set(instances_per_domain[domain])
    coverages = {}
    for configuration in configurations:
        covered_instances = set()
        for instance in instances_per_domain[domain]:
            if any(line[0] == domain and line[1] == instance and (line[2].isnumeric() or line[2] == 'S') for line in all_results[configuration]):
                covered_instances.add(instance)
        intersection_instances &= covered_instances
        coverages[configuration] = len(covered_instances)
    post_processed_results.append([])
    post_processed_results[-1].append(f'{domain}')
    post_processed_results[-1].append(f'{len(instances_per_domain[domain]) - (25 if domain == "first-responders" else 0)}')
    post_processed_results[-1].append(f'{len(intersection_instances)}')
    for configuration in configurations:
        compressed_size = []
        uncompressed_size = []
        memory_used = []
        time_used = []
        considered_policies = []
        inserted_policies = []
        removed_policies = []
        for line in all_results[configuration]:
            if line[0] == domain and line[1] in intersection_instances:
                if 'and-star' in configuration:
                    memory_used.append(float(line[3]))
                    time_used.append(float(line[4]))
                    considered_policies.append(int(line[5]))
                    inserted_policies.append(int(line[6]))
                    removed_policies.append(int(line[7]))
                    uncompressed_size.append(int(line[10]))
                else:
                    compressed_size.append(int(line[2]))
                    time_used.append(float(line[3]))
                    uncompressed_size.append(int(line[4]))
        # post_processed_results[-1].append(f'{coverages[configuration]}')
        post_processed_results[-1].append(f'{coverages[configuration] / int(post_processed_results[-1][1]):.2f}')
        # post_processed_results[-1].append(f'{mean(considered_policies)}')
        # post_processed_results[-1].append(f'{mean(inserted_policies)}')
        # post_processed_results[-1].append(f'{mean(removed_policies)}')
        post_processed_results[-1].append(f'{mean(compressed_size)}')
        post_processed_results[-1].append(f'{mean(uncompressed_size)}')
        # post_processed_results[-1].append(f'{stdev(uncompressed_size)}')
        # post_processed_results[-1].append(f'{stdev(considered_policies)}')
post_processed_results = [['domain', '#instances', '|intersection|'] + sum(([configuration for _ in range((len(post_processed_results[0]) - 3) // len(configurations))] for configuration in configurations), start=[])] + post_processed_results
open('./post_processed_results.tsv','w').write('\n'.join('\t'.join(line) for line in post_processed_results))
