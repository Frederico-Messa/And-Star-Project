import matplotlib.pyplot
import matplotlib
import math
import os

domains_divisors = {
    'acrobatics': 8,
    'beam-walk': 11,
    'blocksworld-original': 30,
    'blocksworld-advanced': 55,
    'chain-of-rooms': 10,
    'earth-observation': 40,
    'elevators': 15,
    'faults': 55,
    'first-responders': 75,
    'tireworld-triangle': 40,
    'zenotravel': 15,
    'doors': 15,
    'islands': 60,
    'miner': 51,
    'tireworld-spiky': 11,
    'tireworld-truck': 74,
}

matplotlib.pyplot.figure(figsize=(2.9, 2.75), dpi=300)

for heuristic in ['weak-count,blind', 'strong-count,blind', 'weak-nearest,lmcut', 'strong-delta,lmcut', 'strongweak-delta-nearest,lmcut'][::-1]:
    times = []
    new = open(f'./processed_results/and-star,{heuristic}.csv').read().split('\n')
    for new_line in new:
        domain = new_line.split(',')[0]
        if new_line.split(',')[2]  == 'S': new_time = float(new_line.split(',')[4])
        else: new_time = math.inf
        if new_time != math.inf: times.append((new_time, 1 / domains_divisors[domain] / 16))
    times = sorted(times)
    xs = [0]
    ys = [0]
    for time, value in times:
        xs.append(time)
        ys.append(value + ys[-1])
    xs.append(1800)
    ys.append(ys[-1])
    matplotlib.pyplot.plot(xs, ys, drawstyle='steps-post', linestyle=':' if 'count' in heuristic else '-')

matplotlib.pyplot.xlabel('Time (in seconds)')
matplotlib.pyplot.ylabel('Ratio of Coverage')
matplotlib.pyplot.xscale('log')
matplotlib.pyplot.xlim(0.05, 1800)
matplotlib.pyplot.ylim(0.15, 0.57)
matplotlib.pyplot.legend(['$G$', '$C$', '$↓$', '$Δ$', '$Δ_↓$'][::-1])
matplotlib.pyplot.tight_layout()
matplotlib.pyplot.savefig(f'./charts/heuristics.png')


matplotlib.rcParams['axes.prop_cycle'] = matplotlib.cycler(color=["gray", "#1f77b4", "#b4301f"]) 
matplotlib.pyplot.figure(figsize=(2.9, 2.75), dpi=300)

for planner in ['fond-sat,None,None', 'and-star,strongweak-delta-nearest,lmcut', 'prp,None,None'][::-1]:
    times = []
    new = open(f'./processed_results/{planner}.csv').read().split('\n')
    for new_line in new:
        domain = new_line.split(',')[0]
        if new_line.split(',')[2] not in ['M', 'T', 'U', '?']:
            times.append((float(new_line.split(',')[4 if 'and-star' in planner else 3]), 1 / domains_divisors[domain] / 16))
    times = sorted(times)
    # print(times)
    xs = [0]
    ys = [0]
    for time, value in times:
        xs.append(time)
        ys.append(value + ys[-1])
    xs.append(1800)
    ys.append(ys[-1])
    matplotlib.pyplot.plot(xs, ys, drawstyle='steps-post')

matplotlib.pyplot.xlabel('Time (in seconds)')
matplotlib.pyplot.ylabel('Ratio of Coverage')
matplotlib.pyplot.xscale('log')
matplotlib.pyplot.xlim(0.05, 1800)
matplotlib.pyplot.ylim(0, 1)
matplotlib.pyplot.legend(['FOND-SAT', 'AND$^*$', 'PRP'][::-1])
matplotlib.pyplot.tight_layout()
matplotlib.pyplot.savefig(f'./charts/planners.png')


figs_sizes = [
    (2.9 - 0.03, 2.75 - 0.2), (2.9 - 0.50, 2.75 - 0.2),
    (2.9 - 0.00, 2.75 - 0.0), (2.9 - 0.40, 2.75 - 0.0),
]

i = 0
limit = 8 * 10**4
inf = limit / math.sqrt(2)
too_many = limit / 2 / math.sqrt(2)
base_results = {','.join(line.split(',')[:2]): int(line.split(',')[10]) if line.split(',')[2] == 'S' else inf for line in open('./processed_results/and-star,strongweak-delta-nearest,lmcut.csv').read().split('\n')}
for format in ['Compressed', 'Decompressed']:
    for planner in ['prp', 'fond-sat']:
        matplotlib.pyplot.figure(figsize=figs_sizes[i], dpi=300); i += 1

        index = 2 if format == 'Compressed' else 4
        against_results = {','.join(line.split(',')[:2]): int(line.split(',')[index]) if line.split(',')[index].isnumeric() else (too_many if line.split(',')[index] == 'Too Many' else inf) for line in open(f'./processed_results/{planner},None,None.csv').read().split('\n')}

        for key in base_results.keys() & against_results.keys():
            x = against_results[key]
            y = base_results[key]
            s = 350 / domains_divisors[key.split(',')[0]]
            matplotlib.pyplot.scatter(x, y, s=s, c='black', alpha=0.25)

        matplotlib.pyplot.xlabel(f'{format} {planner.upper()}')
        if planner == 'prp': matplotlib.pyplot.ylabel('AND$^*$')
        matplotlib.pyplot.xlim(1, limit)
        matplotlib.pyplot.ylim(1, limit)
        matplotlib.pyplot.axline((1, 1), (limit, limit), c='black', ls=':', lw=1)
        matplotlib.pyplot.axhline(limit / 2, c='black', ls=':', lw=1)
        # matplotlib.pyplot.axhline(limit / 4, c='black', ls=':', lw=1)
        matplotlib.pyplot.axvline(limit / 2, c='black', ls=':', lw=1)
        if format == 'Decompressed' and planner == 'prp': matplotlib.pyplot.axvline(limit / 4, c='black', ls=':', lw=1)
        matplotlib.pyplot.xscale('log')
        matplotlib.pyplot.yscale('log')
        if format == 'Decompressed': matplotlib.pyplot.xticks([1, 10, 100, 1000, 10000, inf], ['$10^0$', '$10^1$', '$10^2$', '$10^3$', '$10^4$', '$fail$'])
        else: matplotlib.pyplot.xticks([], [])
        if planner == 'prp': matplotlib.pyplot.yticks([1, 10, 100, 1000, 10000, inf], ['$10^0$', '$10^1$', '$10^2$', '$10^3$', '$10^4$', '$fail$'])
        else: matplotlib.pyplot.yticks([], [])
        matplotlib.pyplot.minorticks_off()
        matplotlib.pyplot.tight_layout()
        matplotlib.pyplot.savefig(f'./charts/and-star,{planner}-{format.lower()}.png')
