# AND\* Project

**AND\* is an uncomplicated FOND planning algorithm with strong theoretical guarantees**.

Messa and Pereira, *"A Best-First Search Algorithm for FOND Planning and Heuristic Functions to Optimize Decompressed Solution Size"*, ICAPS 2023.

---

This project version was mainly tested in **Linux Mint 21.1**.

You will need **[Boost](https://www.boost.org/)** and **[GMP](https://gmplib.org/)**.

*Note:* A newer version of AND* Project might be available at **[GitHub](https://github.com/Frederico-Messa/And-Star-Project)**.

---

## Run:
```
make clean
make and_star
python3 ./test/tester.py
```

The script will use the SAS+ instances in `./compiled_benchmarks` directory and the results will appear in `./raw_results` directory, unless there are already results for the instances there.

Create `./white_list.txt` to define which instances will be used. (one filename per line)

To get results for the **[PRP](https://github.com/QuMuLab/planner-for-relevant-policies)** and **[FOND-SAT](https://github.com/tomsons22/FOND-SAT)** planners, download them respectively in `./planner_prp` and `./planner_fondsat` directories.

To compile new instances, use the PRP planner's translator. *Note:* You will need to remove the "_DETDUP_X" sufixes from the operators labels in the generated files.
