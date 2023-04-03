begin_version
3
end_version
begin_metric
0
end_metric
28
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
Atom completed(o9)
NegatedAtom completed(o9)
end_variable
begin_variable
var9
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var10
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var11
-1
2
Atom fault(f3)
NegatedAtom fault(f3)
end_variable
begin_variable
var12
-1
10
Atom faulted_op(o1, f1)
Atom faulted_op(o2, f1)
Atom faulted_op(o3, f1)
Atom faulted_op(o4, f1)
Atom faulted_op(o5, f1)
Atom faulted_op(o6, f1)
Atom faulted_op(o7, f1)
Atom faulted_op(o8, f1)
Atom faulted_op(o9, f1)
Atom not_fault(f1)
end_variable
begin_variable
var13
-1
10
Atom faulted_op(o1, f2)
Atom faulted_op(o2, f2)
Atom faulted_op(o3, f2)
Atom faulted_op(o4, f2)
Atom faulted_op(o5, f2)
Atom faulted_op(o6, f2)
Atom faulted_op(o7, f2)
Atom faulted_op(o8, f2)
Atom faulted_op(o9, f2)
Atom not_fault(f2)
end_variable
begin_variable
var14
-1
10
Atom faulted_op(o1, f3)
Atom faulted_op(o2, f3)
Atom faulted_op(o3, f3)
Atom faulted_op(o4, f3)
Atom faulted_op(o5, f3)
Atom faulted_op(o6, f3)
Atom faulted_op(o7, f3)
Atom faulted_op(o8, f3)
Atom faulted_op(o9, f3)
Atom not_fault(f3)
end_variable
begin_variable
var15
-1
2
Atom last_fault(f1)
NegatedAtom last_fault(f1)
end_variable
begin_variable
var16
-1
2
Atom last_fault(f2)
NegatedAtom last_fault(f2)
end_variable
begin_variable
var17
-1
2
Atom last_fault(f3)
NegatedAtom last_fault(f3)
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
begin_variable
var25
-1
2
Atom not_completed(o7)
NegatedAtom not_completed(o7)
end_variable
begin_variable
var26
-1
2
Atom not_completed(o8)
NegatedAtom not_completed(o8)
end_variable
begin_variable
var27
-1
2
Atom not_completed(o9)
NegatedAtom not_completed(o9)
end_variable
12
begin_mutex_group
4
12 0
13 0
14 0
19 0
end_mutex_group
begin_mutex_group
10
12 0
12 1
12 2
12 3
12 4
12 5
12 6
12 7
12 8
12 9
end_mutex_group
begin_mutex_group
10
13 0
13 1
13 2
13 3
13 4
13 5
13 6
13 7
13 8
13 9
end_mutex_group
begin_mutex_group
10
14 0
14 1
14 2
14 3
14 4
14 5
14 6
14 7
14 8
14 9
end_mutex_group
begin_mutex_group
4
12 1
13 1
14 1
20 0
end_mutex_group
begin_mutex_group
4
12 2
13 2
14 2
21 0
end_mutex_group
begin_mutex_group
4
12 3
13 3
14 3
22 0
end_mutex_group
begin_mutex_group
4
12 4
13 4
14 4
23 0
end_mutex_group
begin_mutex_group
4
12 5
13 5
14 5
24 0
end_mutex_group
begin_mutex_group
4
12 6
13 6
14 6
25 0
end_mutex_group
begin_mutex_group
4
12 7
13 7
14 7
26 0
end_mutex_group
begin_mutex_group
4
12 8
13 8
14 8
27 0
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
1
9
9
9
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
0
end_state
begin_goal
1
18 0
end_goal
82
begin_operator
finish 
10
0 0
1 0
2 0
3 0
4 0
5 0
6 0
7 0
8 0
17 1
1
0 18 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
3
12 9
13 9
14 9
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
2
13 9
14 9
5
0 0 -1 0
0 9 -1 0
0 12 9 0
0 15 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
3
12 9
13 9
14 9
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
2
13 9
14 9
5
0 1 -1 0
0 9 -1 0
0 12 9 1
0 15 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
3
12 9
13 9
14 9
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
2
13 9
14 9
5
0 2 -1 0
0 9 -1 0
0 12 9 2
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
3
12 9
13 9
14 9
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
2
13 9
14 9
5
0 3 -1 0
0 9 -1 0
0 12 9 3
0 15 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
3
12 9
13 9
14 9
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
2
13 9
14 9
5
0 4 -1 0
0 9 -1 0
0 12 9 4
0 15 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
3
12 9
13 9
14 9
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
2
13 9
14 9
5
0 5 -1 0
0 9 -1 0
0 12 9 5
0 15 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_1_fault o7
3
12 9
13 9
14 9
2
0 6 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_1_fault o7
2
13 9
14 9
5
0 6 -1 0
0 9 -1 0
0 12 9 6
0 15 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_1_fault o8
3
12 9
13 9
14 9
2
0 7 -1 0
0 26 0 1
0
end_operator
begin_operator
perform_operation_1_fault o8
2
13 9
14 9
5
0 7 -1 0
0 9 -1 0
0 12 9 7
0 15 -1 0
0 26 0 1
0
end_operator
begin_operator
perform_operation_1_fault o9
3
12 9
13 9
14 9
2
0 8 -1 0
0 27 0 1
0
end_operator
begin_operator
perform_operation_1_fault o9
2
13 9
14 9
5
0 8 -1 0
0 9 -1 0
0 12 9 8
0 15 -1 0
0 27 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
3
9 0
13 9
14 9
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
2
9 0
14 9
5
0 0 -1 0
0 10 -1 0
0 13 9 0
0 16 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
3
9 0
13 9
14 9
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
2
9 0
14 9
5
0 1 -1 0
0 10 -1 0
0 13 9 1
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
3
9 0
13 9
14 9
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
2
9 0
14 9
5
0 2 -1 0
0 10 -1 0
0 13 9 2
0 16 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
3
9 0
13 9
14 9
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
2
9 0
14 9
5
0 3 -1 0
0 10 -1 0
0 13 9 3
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
3
9 0
13 9
14 9
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
2
9 0
14 9
5
0 4 -1 0
0 10 -1 0
0 13 9 4
0 16 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
3
9 0
13 9
14 9
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
2
9 0
14 9
5
0 5 -1 0
0 10 -1 0
0 13 9 5
0 16 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_2_fault o7
3
9 0
13 9
14 9
2
0 6 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_2_fault o7
2
9 0
14 9
5
0 6 -1 0
0 10 -1 0
0 13 9 6
0 16 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_2_fault o8
3
9 0
13 9
14 9
2
0 7 -1 0
0 26 0 1
0
end_operator
begin_operator
perform_operation_2_fault o8
2
9 0
14 9
5
0 7 -1 0
0 10 -1 0
0 13 9 7
0 16 -1 0
0 26 0 1
0
end_operator
begin_operator
perform_operation_2_fault o9
3
9 0
13 9
14 9
2
0 8 -1 0
0 27 0 1
0
end_operator
begin_operator
perform_operation_2_fault o9
2
9 0
14 9
5
0 8 -1 0
0 10 -1 0
0 13 9 8
0 16 -1 0
0 27 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
2
9 0
10 0
5
0 0 -1 0
0 11 -1 0
0 14 9 0
0 17 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
3
9 0
10 0
14 9
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
2
9 0
10 0
5
0 1 -1 0
0 11 -1 0
0 14 9 1
0 17 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
3
9 0
10 0
14 9
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
2
9 0
10 0
5
0 2 -1 0
0 11 -1 0
0 14 9 2
0 17 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
3
9 0
10 0
14 9
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
2
9 0
10 0
5
0 3 -1 0
0 11 -1 0
0 14 9 3
0 17 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
3
9 0
10 0
14 9
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
2
9 0
10 0
5
0 4 -1 0
0 11 -1 0
0 14 9 4
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
3
9 0
10 0
14 9
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
2
9 0
10 0
5
0 5 -1 0
0 11 -1 0
0 14 9 5
0 17 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
3
9 0
10 0
14 9
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_3_fault o7
2
9 0
10 0
5
0 6 -1 0
0 11 -1 0
0 14 9 6
0 17 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_3_fault o7
3
9 0
10 0
14 9
2
0 6 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_3_fault o8
2
9 0
10 0
5
0 7 -1 0
0 11 -1 0
0 14 9 7
0 17 -1 0
0 26 0 1
0
end_operator
begin_operator
perform_operation_3_fault o8
3
9 0
10 0
14 9
2
0 7 -1 0
0 26 0 1
0
end_operator
begin_operator
perform_operation_3_fault o9
2
9 0
10 0
5
0 8 -1 0
0 11 -1 0
0 14 9 8
0 17 -1 0
0 27 0 1
0
end_operator
begin_operator
perform_operation_3_fault o9
3
9 0
10 0
14 9
2
0 8 -1 0
0 27 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 12 0 9
0 15 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 12 1 9
0 15 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 12 2 9
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 12 3 9
0 15 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 12 4 9
0 15 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_1 o6
0
4
0 5 -1 1
0 12 5 9
0 15 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_1 o7
0
4
0 6 -1 1
0 12 6 9
0 15 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_1 o8
0
4
0 7 -1 1
0 12 7 9
0 15 0 1
0 26 -1 0
0
end_operator
begin_operator
repair_fault_1 o9
0
4
0 8 -1 1
0 12 8 9
0 15 0 1
0 27 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 13 0 9
0 15 -1 0
0 16 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 13 1 9
0 15 -1 0
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 13 2 9
0 15 -1 0
0 16 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 13 3 9
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o5
0
5
0 4 -1 1
0 13 4 9
0 15 -1 0
0 16 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_2 o6
0
5
0 5 -1 1
0 13 5 9
0 15 -1 0
0 16 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_2 o7
0
5
0 6 -1 1
0 13 6 9
0 15 -1 0
0 16 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_2 o8
0
5
0 7 -1 1
0 13 7 9
0 15 -1 0
0 16 0 1
0 26 -1 0
0
end_operator
begin_operator
repair_fault_2 o9
0
5
0 8 -1 1
0 13 8 9
0 15 -1 0
0 16 0 1
0 27 -1 0
0
end_operator
begin_operator
repair_fault_3 o1
0
5
0 0 -1 1
0 14 0 9
0 16 -1 0
0 17 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_3 o2
0
5
0 1 -1 1
0 14 1 9
0 16 -1 0
0 17 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_3 o3
0
5
0 2 -1 1
0 14 2 9
0 16 -1 0
0 17 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_3 o4
0
5
0 3 -1 1
0 14 3 9
0 16 -1 0
0 17 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_3 o5
0
5
0 4 -1 1
0 14 4 9
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o6
0
5
0 5 -1 1
0 14 5 9
0 16 -1 0
0 17 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_3 o7
0
5
0 6 -1 1
0 14 6 9
0 16 -1 0
0 17 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_3 o8
0
5
0 7 -1 1
0 14 7 9
0 16 -1 0
0 17 0 1
0 26 -1 0
0
end_operator
begin_operator
repair_fault_3 o9
0
5
0 8 -1 1
0 14 8 9
0 16 -1 0
0 17 0 1
0 27 -1 0
0
end_operator
0
