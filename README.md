# AND\* Project

**AND\* is an uncomplicated FOND planning algorithm with strong theoretical guarantees**.

- Messa and Pereira, *"A Best-First Search Algorithm for FOND Planning and Heuristic Functions to Optimize Decompressed Solution Size"*, ICAPS 2023. [(link)](https://ojs.aaai.org/index.php/ICAPS/article/view/27205)

- Messa and Pereira, *"Policy-Space Search: Equivalences, Improvements, and Compression"*, submitted to AIJ. [(arXiv)](https://arxiv.org/abs/2403.19883)

---

This project version was mainly tested in **Linux Mint 21.2** and **Ubuntu 22.04**.

*Note:* A newer version of the AND* Project might be available on **[GitHub](https://github.com/Frederico-Messa/And-Star-Project)**.

---

### Installing Dependencies (Ubuntu 22.02)

```
apt-get install -y \
    python3-pip \
    g++ \
    libboost-all-dev \
    libgmp3-dev \
    gap \
    nauty
pip3 install \
    typed-argument-parser \
    argcomplete \
    networkx
```

This project also uses:
- A modified version of the [PRP's PDDL to SAS+ translator](https://github.com/QuMuLab/planner-for-relevant-policies/tree/master/src/translate), placed at `./dep/translator/`
- A modified version of the [PRP's solution validator](https://github.com/QuMuLab/planner-for-relevant-policies/tree/master/prp-scripts/), placed at `./dep/validator/`
- Our proposed [FOND solution compressor](https://github.com/Frederico-Messa/FOND-Compressor), placed at `/dep/compressor/`

More information about the modifications of the [PRP](https://github.com/QuMuLab/planner-for-relevant-policies)'s translator and validator can be found on [this page](https://github.com/Frederico-Messa/PRP-Scripts-for-And-Star).

---

### Building

```
make
```

---

### Running

```
./and_star.py domain.pddl problem.pddl
```

*Optional:* **`--optimal`** (to run AND* in optimality mode, which is slower)

---

### Low-level Interface
```
./and_star domain.pddl problem.pddl stateHeuristic policyHeuristic searchEngine equivalenceDetection symmetryDetection deadlockDetection
```

- **`stateHeuristic`**: `blind`, `max`, `lmcut`, `ff`, `add`, `star`
- **`policyHeuristic`**: `count`, `nearest`, `delta-nearest`, `delta-pathmax`
- **`searchEngine`**: `best-first`, `2-weighted-first`, `greedy-first`
- **`equivalenceDetection`**: `id`, `lanes`, `in-out`, `out`
- **`symmetryDetection`**: `false`, `greedy`, `true`
- **`deadlockDetection`**: `true`, `false`, `fix`

You can also specify an extra argument to change the IP solver used by the compressor.

**Strongest setting:** (incomplete – it may incorrectly prune all solutions and fail)

```
./and_star domain.pddl problem.pddl lmcut delta-pathmax 2-weighted-first out true true
```

If it fails, try this safe setting:

**A safe setting:** (sound and complete)

```
./and_star domain.pddl problem.pddl lmcut delta-pathmax 2-weighted-first id false true
```

For **optimality**, change `2-weighted-first` to `best-first` in the safe setting.
