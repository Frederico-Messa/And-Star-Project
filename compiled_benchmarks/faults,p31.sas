begin_version
3
end_version
begin_metric
0
end_metric
26
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
Atom completed(o7)
NegatedAtom completed(o7)
end_variable
begin_variable
var7
-1
2
Atom completed(o8)
NegatedAtom completed(o8)
end_variable
begin_variable
var8
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var9
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var10
-1
2
Atom fault(f3)
NegatedAtom fault(f3)
end_variable
begin_variable
var11
-1
9
Atom faulted_op(o1, f1)
Atom faulted_op(o2, f1)
Atom faulted_op(o3, f1)
Atom faulted_op(o4, f1)
Atom faulted_op(o5, f1)
Atom faulted_op(o6, f1)
Atom faulted_op(o7, f1)
Atom faulted_op(o8, f1)
Atom not_fault(f1)
end_variable
begin_variable
var12
-1
9
Atom faulted_op(o1, f2)
Atom faulted_op(o2, f2)
Atom faulted_op(o3, f2)
Atom faulted_op(o4, f2)
Atom faulted_op(o5, f2)
Atom faulted_op(o6, f2)
Atom faulted_op(o7, f2)
Atom faulted_op(o8, f2)
Atom not_fault(f2)
end_variable
begin_variable
var13
-1
9
Atom faulted_op(o1, f3)
Atom faulted_op(o2, f3)
Atom faulted_op(o3, f3)
Atom faulted_op(o4, f3)
Atom faulted_op(o5, f3)
Atom faulted_op(o6, f3)
Atom faulted_op(o7, f3)
Atom faulted_op(o8, f3)
Atom not_fault(f3)
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
Atom made()
NegatedAtom made()
end_variable
begin_variable
var18
-1
2
Atom not_completed(o1)
NegatedAtom not_completed(o1)
end_variable
begin_variable
var19
-1
2
Atom not_completed(o2)
NegatedAtom not_completed(o2)
end_variable
begin_variable
var20
-1
2
Atom not_completed(o3)
NegatedAtom not_completed(o3)
end_variable
begin_variable
var21
-1
2
Atom not_completed(o4)
NegatedAtom not_completed(o4)
end_variable
begin_variable
var22
-1
2
Atom not_completed(o5)
NegatedAtom not_completed(o5)
end_variable
begin_variable
var23
-1
2
Atom not_completed(o6)
NegatedAtom not_completed(o6)
end_variable
begin_variable
var24
-1
2
Atom not_completed(o7)
NegatedAtom not_completed(o7)
end_variable
begin_variable
var25
-1
2
Atom not_completed(o8)
NegatedAtom not_completed(o8)
end_variable
11
begin_mutex_group
4
11 0
12 0
13 0
18 0
end_mutex_group
begin_mutex_group
9
11 0
11 1
11 2
11 3
11 4
11 5
11 6
11 7
11 8
end_mutex_group
begin_mutex_group
9
12 0
12 1
12 2
12 3
12 4
12 5
12 6
12 7
12 8
end_mutex_group
begin_mutex_group
9
13 0
13 1
13 2
13 3
13 4
13 5
13 6
13 7
13 8
end_mutex_group
begin_mutex_group
4
11 1
12 1
13 1
19 0
end_mutex_group
begin_mutex_group
4
11 2
12 2
13 2
20 0
end_mutex_group
begin_mutex_group
4
11 3
12 3
13 3
21 0
end_mutex_group
begin_mutex_group
4
11 4
12 4
13 4
22 0
end_mutex_group
begin_mutex_group
4
11 5
12 5
13 5
23 0
end_mutex_group
begin_mutex_group
4
11 6
12 6
13 6
24 0
end_mutex_group
begin_mutex_group
4
11 7
12 7
13 7
25 0
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
1
8
8
8
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
0
0
end_state
begin_goal
1
17 0
end_goal
73
begin_operator
finish 
9
0 0
1 0
2 0
3 0
4 0
5 0
6 0
7 0
16 1
1
0 17 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
3
11 8
12 8
13 8
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
2
12 8
13 8
5
0 0 -1 0
0 8 -1 0
0 11 8 0
0 14 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
3
11 8
12 8
13 8
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
2
12 8
13 8
5
0 1 -1 0
0 8 -1 0
0 11 8 1
0 14 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
3
11 8
12 8
13 8
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
2
12 8
13 8
5
0 2 -1 0
0 8 -1 0
0 11 8 2
0 14 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
3
11 8
12 8
13 8
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
2
12 8
13 8
5
0 3 -1 0
0 8 -1 0
0 11 8 3
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
3
11 8
12 8
13 8
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
2
12 8
13 8
5
0 4 -1 0
0 8 -1 0
0 11 8 4
0 14 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
3
11 8
12 8
13 8
2
0 5 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
2
12 8
13 8
5
0 5 -1 0
0 8 -1 0
0 11 8 5
0 14 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_1_fault o7
3
11 8
12 8
13 8
2
0 6 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_1_fault o7
2
12 8
13 8
5
0 6 -1 0
0 8 -1 0
0 11 8 6
0 14 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_1_fault o8
3
11 8
12 8
13 8
2
0 7 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_1_fault o8
2
12 8
13 8
5
0 7 -1 0
0 8 -1 0
0 11 8 7
0 14 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
3
8 0
12 8
13 8
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
2
8 0
13 8
5
0 0 -1 0
0 9 -1 0
0 12 8 0
0 15 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
3
8 0
12 8
13 8
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
2
8 0
13 8
5
0 1 -1 0
0 9 -1 0
0 12 8 1
0 15 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
3
8 0
12 8
13 8
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
2
8 0
13 8
5
0 2 -1 0
0 9 -1 0
0 12 8 2
0 15 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
3
8 0
12 8
13 8
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
2
8 0
13 8
5
0 3 -1 0
0 9 -1 0
0 12 8 3
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
3
8 0
12 8
13 8
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
2
8 0
13 8
5
0 4 -1 0
0 9 -1 0
0 12 8 4
0 15 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
3
8 0
12 8
13 8
2
0 5 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
2
8 0
13 8
5
0 5 -1 0
0 9 -1 0
0 12 8 5
0 15 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_2_fault o7
3
8 0
12 8
13 8
2
0 6 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_2_fault o7
2
8 0
13 8
5
0 6 -1 0
0 9 -1 0
0 12 8 6
0 15 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_2_fault o8
3
8 0
12 8
13 8
2
0 7 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_2_fault o8
2
8 0
13 8
5
0 7 -1 0
0 9 -1 0
0 12 8 7
0 15 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
2
8 0
9 0
5
0 0 -1 0
0 10 -1 0
0 13 8 0
0 16 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
3
8 0
9 0
13 8
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
2
8 0
9 0
5
0 1 -1 0
0 10 -1 0
0 13 8 1
0 16 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
3
8 0
9 0
13 8
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
2
8 0
9 0
5
0 2 -1 0
0 10 -1 0
0 13 8 2
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
3
8 0
9 0
13 8
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
2
8 0
9 0
5
0 3 -1 0
0 10 -1 0
0 13 8 3
0 16 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
3
8 0
9 0
13 8
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
2
8 0
9 0
5
0 4 -1 0
0 10 -1 0
0 13 8 4
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
3
8 0
9 0
13 8
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
2
8 0
9 0
5
0 5 -1 0
0 10 -1 0
0 13 8 5
0 16 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
3
8 0
9 0
13 8
2
0 5 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o7
2
8 0
9 0
5
0 6 -1 0
0 10 -1 0
0 13 8 6
0 16 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_3_fault o7
3
8 0
9 0
13 8
2
0 6 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_3_fault o8
2
8 0
9 0
5
0 7 -1 0
0 10 -1 0
0 13 8 7
0 16 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_3_fault o8
3
8 0
9 0
13 8
2
0 7 -1 0
0 25 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 11 0 8
0 14 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 11 1 8
0 14 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 11 2 8
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 11 3 8
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 11 4 8
0 14 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_1 o6
0
4
0 5 -1 1
0 11 5 8
0 14 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_1 o7
0
4
0 6 -1 1
0 11 6 8
0 14 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_1 o8
0
4
0 7 -1 1
0 11 7 8
0 14 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 12 0 8
0 14 -1 0
0 15 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 12 1 8
0 14 -1 0
0 15 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 12 2 8
0 14 -1 0
0 15 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 12 3 8
0 14 -1 0
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_2 o5
0
5
0 4 -1 1
0 12 4 8
0 14 -1 0
0 15 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o6
0
5
0 5 -1 1
0 12 5 8
0 14 -1 0
0 15 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_2 o7
0
5
0 6 -1 1
0 12 6 8
0 14 -1 0
0 15 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_2 o8
0
5
0 7 -1 1
0 12 7 8
0 14 -1 0
0 15 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_3 o1
0
5
0 0 -1 1
0 13 0 8
0 15 -1 0
0 16 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_3 o2
0
5
0 1 -1 1
0 13 1 8
0 15 -1 0
0 16 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_3 o3
0
5
0 2 -1 1
0 13 2 8
0 15 -1 0
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_3 o4
0
5
0 3 -1 1
0 13 3 8
0 15 -1 0
0 16 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_3 o5
0
5
0 4 -1 1
0 13 4 8
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_3 o6
0
5
0 5 -1 1
0 13 5 8
0 15 -1 0
0 16 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o7
0
5
0 6 -1 1
0 13 6 8
0 15 -1 0
0 16 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_3 o8
0
5
0 7 -1 1
0 13 7 8
0 15 -1 0
0 16 0 1
0 25 -1 0
0
end_operator
0
