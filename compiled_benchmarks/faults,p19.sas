begin_version
3
end_version
begin_metric
0
end_metric
25
begin_variable
var0
-1
2
Atom completed(o1)
NegatedAtom completed(o1)
end_variable
begin_variable
var1
-1
2
Atom completed(o2)
NegatedAtom completed(o2)
end_variable
begin_variable
var2
-1
2
Atom completed(o3)
NegatedAtom completed(o3)
end_variable
begin_variable
var3
-1
2
Atom completed(o4)
NegatedAtom completed(o4)
end_variable
begin_variable
var4
-1
2
Atom completed(o5)
NegatedAtom completed(o5)
end_variable
begin_variable
var5
-1
2
Atom completed(o6)
NegatedAtom completed(o6)
end_variable
begin_variable
var6
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var7
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var8
-1
2
Atom fault(f3)
NegatedAtom fault(f3)
end_variable
begin_variable
var9
-1
2
Atom fault(f4)
NegatedAtom fault(f4)
end_variable
begin_variable
var10
-1
7
Atom faulted_op(o1, f1)
Atom faulted_op(o2, f1)
Atom faulted_op(o3, f1)
Atom faulted_op(o4, f1)
Atom faulted_op(o5, f1)
Atom faulted_op(o6, f1)
Atom not_fault(f1)
end_variable
begin_variable
var11
-1
7
Atom faulted_op(o1, f2)
Atom faulted_op(o2, f2)
Atom faulted_op(o3, f2)
Atom faulted_op(o4, f2)
Atom faulted_op(o5, f2)
Atom faulted_op(o6, f2)
Atom not_fault(f2)
end_variable
begin_variable
var12
-1
7
Atom faulted_op(o1, f3)
Atom faulted_op(o2, f3)
Atom faulted_op(o3, f3)
Atom faulted_op(o4, f3)
Atom faulted_op(o5, f3)
Atom faulted_op(o6, f3)
Atom not_fault(f3)
end_variable
begin_variable
var13
-1
7
Atom faulted_op(o1, f4)
Atom faulted_op(o2, f4)
Atom faulted_op(o3, f4)
Atom faulted_op(o4, f4)
Atom faulted_op(o5, f4)
Atom faulted_op(o6, f4)
Atom not_fault(f4)
end_variable
begin_variable
var14
-1
2
Atom last_fault(f1)
NegatedAtom last_fault(f1)
end_variable
begin_variable
var15
-1
2
Atom last_fault(f2)
NegatedAtom last_fault(f2)
end_variable
begin_variable
var16
-1
2
Atom last_fault(f3)
NegatedAtom last_fault(f3)
end_variable
begin_variable
var17
-1
2
Atom last_fault(f4)
NegatedAtom last_fault(f4)
end_variable
begin_variable
var18
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var19
-1
2
Atom not_completed(o1)
NegatedAtom not_completed(o1)
end_variable
begin_variable
var20
-1
2
Atom not_completed(o2)
NegatedAtom not_completed(o2)
end_variable
begin_variable
var21
-1
2
Atom not_completed(o3)
NegatedAtom not_completed(o3)
end_variable
begin_variable
var22
-1
2
Atom not_completed(o4)
NegatedAtom not_completed(o4)
end_variable
begin_variable
var23
-1
2
Atom not_completed(o5)
NegatedAtom not_completed(o5)
end_variable
begin_variable
var24
-1
2
Atom not_completed(o6)
NegatedAtom not_completed(o6)
end_variable
10
begin_mutex_group
5
10 0
11 0
12 0
13 0
19 0
end_mutex_group
begin_mutex_group
7
10 0
10 1
10 2
10 3
10 4
10 5
10 6
end_mutex_group
begin_mutex_group
7
11 0
11 1
11 2
11 3
11 4
11 5
11 6
end_mutex_group
begin_mutex_group
7
12 0
12 1
12 2
12 3
12 4
12 5
12 6
end_mutex_group
begin_mutex_group
7
13 0
13 1
13 2
13 3
13 4
13 5
13 6
end_mutex_group
begin_mutex_group
5
10 1
11 1
12 1
13 1
20 0
end_mutex_group
begin_mutex_group
5
10 2
11 2
12 2
13 2
21 0
end_mutex_group
begin_mutex_group
5
10 3
11 3
12 3
13 3
22 0
end_mutex_group
begin_mutex_group
5
10 4
11 4
12 4
13 4
23 0
end_mutex_group
begin_mutex_group
5
10 5
11 5
12 5
13 5
24 0
end_mutex_group
begin_state
1
1
1
1
1
1
1
1
1
1
6
6
6
6
1
1
1
1
1
0
0
0
0
0
0
end_state
begin_goal
1
18 0
end_goal
73
begin_operator
finish 
7
0 0
1 0
2 0
3 0
4 0
5 0
17 1
1
0 18 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
4
10 6
11 6
12 6
13 6
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
3
11 6
12 6
13 6
5
0 0 -1 0
0 6 -1 0
0 10 6 0
0 14 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
4
10 6
11 6
12 6
13 6
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
3
11 6
12 6
13 6
5
0 1 -1 0
0 6 -1 0
0 10 6 1
0 14 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
4
10 6
11 6
12 6
13 6
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
3
11 6
12 6
13 6
5
0 2 -1 0
0 6 -1 0
0 10 6 2
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
4
10 6
11 6
12 6
13 6
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
3
11 6
12 6
13 6
5
0 3 -1 0
0 6 -1 0
0 10 6 3
0 14 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
4
10 6
11 6
12 6
13 6
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
3
11 6
12 6
13 6
5
0 4 -1 0
0 6 -1 0
0 10 6 4
0 14 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
4
10 6
11 6
12 6
13 6
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
3
11 6
12 6
13 6
5
0 5 -1 0
0 6 -1 0
0 10 6 5
0 14 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
4
6 0
11 6
12 6
13 6
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
3
6 0
12 6
13 6
5
0 0 -1 0
0 7 -1 0
0 11 6 0
0 15 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
4
6 0
11 6
12 6
13 6
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
3
6 0
12 6
13 6
5
0 1 -1 0
0 7 -1 0
0 11 6 1
0 15 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
4
6 0
11 6
12 6
13 6
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
3
6 0
12 6
13 6
5
0 2 -1 0
0 7 -1 0
0 11 6 2
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
4
6 0
11 6
12 6
13 6
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
3
6 0
12 6
13 6
5
0 3 -1 0
0 7 -1 0
0 11 6 3
0 15 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
4
6 0
11 6
12 6
13 6
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
3
6 0
12 6
13 6
5
0 4 -1 0
0 7 -1 0
0 11 6 4
0 15 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
4
6 0
11 6
12 6
13 6
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
3
6 0
12 6
13 6
5
0 5 -1 0
0 7 -1 0
0 11 6 5
0 15 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
4
6 0
7 0
12 6
13 6
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
3
6 0
7 0
13 6
5
0 0 -1 0
0 8 -1 0
0 12 6 0
0 16 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
4
6 0
7 0
12 6
13 6
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
3
6 0
7 0
13 6
5
0 1 -1 0
0 8 -1 0
0 12 6 1
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
4
6 0
7 0
12 6
13 6
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
3
6 0
7 0
13 6
5
0 2 -1 0
0 8 -1 0
0 12 6 2
0 16 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
4
6 0
7 0
12 6
13 6
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
3
6 0
7 0
13 6
5
0 3 -1 0
0 8 -1 0
0 12 6 3
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
4
6 0
7 0
12 6
13 6
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
3
6 0
7 0
13 6
5
0 4 -1 0
0 8 -1 0
0 12 6 4
0 16 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
4
6 0
7 0
12 6
13 6
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
3
6 0
7 0
13 6
5
0 5 -1 0
0 8 -1 0
0 12 6 5
0 16 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_4_fault o1
3
6 0
7 0
8 0
5
0 0 -1 0
0 9 -1 0
0 13 6 0
0 17 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_4_fault o1
4
6 0
7 0
8 0
13 6
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_4_fault o2
3
6 0
7 0
8 0
5
0 1 -1 0
0 9 -1 0
0 13 6 1
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_4_fault o2
4
6 0
7 0
8 0
13 6
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_4_fault o3
3
6 0
7 0
8 0
5
0 2 -1 0
0 9 -1 0
0 13 6 2
0 17 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_4_fault o3
4
6 0
7 0
8 0
13 6
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_4_fault o4
3
6 0
7 0
8 0
5
0 3 -1 0
0 9 -1 0
0 13 6 3
0 17 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_4_fault o4
4
6 0
7 0
8 0
13 6
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_4_fault o5
3
6 0
7 0
8 0
5
0 4 -1 0
0 9 -1 0
0 13 6 4
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_4_fault o5
4
6 0
7 0
8 0
13 6
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_4_fault o6
3
6 0
7 0
8 0
5
0 5 -1 0
0 9 -1 0
0 13 6 5
0 17 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_4_fault o6
4
6 0
7 0
8 0
13 6
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 10 0 6
0 14 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 10 1 6
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 10 2 6
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 10 3 6
0 14 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 10 4 6
0 14 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_1 o6
0
4
0 5 -1 1
0 10 5 6
0 14 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 11 0 6
0 14 -1 0
0 15 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 11 1 6
0 14 -1 0
0 15 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 11 2 6
0 14 -1 0
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 11 3 6
0 14 -1 0
0 15 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o5
0
5
0 4 -1 1
0 11 4 6
0 14 -1 0
0 15 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_2 o6
0
5
0 5 -1 1
0 11 5 6
0 14 -1 0
0 15 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_3 o1
0
5
0 0 -1 1
0 12 0 6
0 15 -1 0
0 16 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_3 o2
0
5
0 1 -1 1
0 12 1 6
0 15 -1 0
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_3 o3
0
5
0 2 -1 1
0 12 2 6
0 15 -1 0
0 16 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_3 o4
0
5
0 3 -1 1
0 12 3 6
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_3 o5
0
5
0 4 -1 1
0 12 4 6
0 15 -1 0
0 16 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o6
0
5
0 5 -1 1
0 12 5 6
0 15 -1 0
0 16 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_4 o1
0
5
0 0 -1 1
0 13 0 6
0 16 -1 0
0 17 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_4 o2
0
5
0 1 -1 1
0 13 1 6
0 16 -1 0
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_4 o3
0
5
0 2 -1 1
0 13 2 6
0 16 -1 0
0 17 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_4 o4
0
5
0 3 -1 1
0 13 3 6
0 16 -1 0
0 17 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_4 o5
0
5
0 4 -1 1
0 13 4 6
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_4 o6
0
5
0 5 -1 1
0 13 5 6
0 16 -1 0
0 17 0 1
0 24 -1 0
0
end_operator
0
