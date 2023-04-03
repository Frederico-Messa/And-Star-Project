begin_version
3
end_version
begin_metric
0
end_metric
23
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
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var6
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var7
-1
2
Atom fault(f3)
NegatedAtom fault(f3)
end_variable
begin_variable
var8
-1
2
Atom fault(f4)
NegatedAtom fault(f4)
end_variable
begin_variable
var9
-1
6
Atom faulted_op(o1, f1)
Atom faulted_op(o2, f1)
Atom faulted_op(o3, f1)
Atom faulted_op(o4, f1)
Atom faulted_op(o5, f1)
Atom not_fault(f1)
end_variable
begin_variable
var10
-1
6
Atom faulted_op(o1, f2)
Atom faulted_op(o2, f2)
Atom faulted_op(o3, f2)
Atom faulted_op(o4, f2)
Atom faulted_op(o5, f2)
Atom not_fault(f2)
end_variable
begin_variable
var11
-1
6
Atom faulted_op(o1, f3)
Atom faulted_op(o2, f3)
Atom faulted_op(o3, f3)
Atom faulted_op(o4, f3)
Atom faulted_op(o5, f3)
Atom not_fault(f3)
end_variable
begin_variable
var12
-1
6
Atom faulted_op(o1, f4)
Atom faulted_op(o2, f4)
Atom faulted_op(o3, f4)
Atom faulted_op(o4, f4)
Atom faulted_op(o5, f4)
Atom not_fault(f4)
end_variable
begin_variable
var13
-1
2
Atom last_fault(f1)
NegatedAtom last_fault(f1)
end_variable
begin_variable
var14
-1
2
Atom last_fault(f2)
NegatedAtom last_fault(f2)
end_variable
begin_variable
var15
-1
2
Atom last_fault(f3)
NegatedAtom last_fault(f3)
end_variable
begin_variable
var16
-1
2
Atom last_fault(f4)
NegatedAtom last_fault(f4)
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
9
begin_mutex_group
5
9 0
10 0
11 0
12 0
18 0
end_mutex_group
begin_mutex_group
6
9 0
9 1
9 2
9 3
9 4
9 5
end_mutex_group
begin_mutex_group
6
10 0
10 1
10 2
10 3
10 4
10 5
end_mutex_group
begin_mutex_group
6
11 0
11 1
11 2
11 3
11 4
11 5
end_mutex_group
begin_mutex_group
6
12 0
12 1
12 2
12 3
12 4
12 5
end_mutex_group
begin_mutex_group
5
9 1
10 1
11 1
12 1
19 0
end_mutex_group
begin_mutex_group
5
9 2
10 2
11 2
12 2
20 0
end_mutex_group
begin_mutex_group
5
9 3
10 3
11 3
12 3
21 0
end_mutex_group
begin_mutex_group
5
9 4
10 4
11 4
12 4
22 0
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
5
5
5
5
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
end_state
begin_goal
1
17 0
end_goal
61
begin_operator
finish 
6
0 0
1 0
2 0
3 0
4 0
16 1
1
0 17 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
4
9 5
10 5
11 5
12 5
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
3
10 5
11 5
12 5
5
0 0 -1 0
0 5 -1 0
0 9 5 0
0 13 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
4
9 5
10 5
11 5
12 5
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
3
10 5
11 5
12 5
5
0 1 -1 0
0 5 -1 0
0 9 5 1
0 13 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
4
9 5
10 5
11 5
12 5
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
3
10 5
11 5
12 5
5
0 2 -1 0
0 5 -1 0
0 9 5 2
0 13 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
4
9 5
10 5
11 5
12 5
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
3
10 5
11 5
12 5
5
0 3 -1 0
0 5 -1 0
0 9 5 3
0 13 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
4
9 5
10 5
11 5
12 5
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
3
10 5
11 5
12 5
5
0 4 -1 0
0 5 -1 0
0 9 5 4
0 13 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
4
5 0
10 5
11 5
12 5
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
3
5 0
11 5
12 5
5
0 0 -1 0
0 6 -1 0
0 10 5 0
0 14 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
4
5 0
10 5
11 5
12 5
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
3
5 0
11 5
12 5
5
0 1 -1 0
0 6 -1 0
0 10 5 1
0 14 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
4
5 0
10 5
11 5
12 5
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
3
5 0
11 5
12 5
5
0 2 -1 0
0 6 -1 0
0 10 5 2
0 14 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
4
5 0
10 5
11 5
12 5
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
3
5 0
11 5
12 5
5
0 3 -1 0
0 6 -1 0
0 10 5 3
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
4
5 0
10 5
11 5
12 5
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
3
5 0
11 5
12 5
5
0 4 -1 0
0 6 -1 0
0 10 5 4
0 14 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
4
5 0
6 0
11 5
12 5
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
3
5 0
6 0
12 5
5
0 0 -1 0
0 7 -1 0
0 11 5 0
0 15 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
4
5 0
6 0
11 5
12 5
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
3
5 0
6 0
12 5
5
0 1 -1 0
0 7 -1 0
0 11 5 1
0 15 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
4
5 0
6 0
11 5
12 5
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
3
5 0
6 0
12 5
5
0 2 -1 0
0 7 -1 0
0 11 5 2
0 15 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
4
5 0
6 0
11 5
12 5
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
3
5 0
6 0
12 5
5
0 3 -1 0
0 7 -1 0
0 11 5 3
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
4
5 0
6 0
11 5
12 5
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
3
5 0
6 0
12 5
5
0 4 -1 0
0 7 -1 0
0 11 5 4
0 15 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_4_fault o1
3
5 0
6 0
7 0
5
0 0 -1 0
0 8 -1 0
0 12 5 0
0 16 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_4_fault o1
4
5 0
6 0
7 0
12 5
2
0 0 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_4_fault o2
3
5 0
6 0
7 0
5
0 1 -1 0
0 8 -1 0
0 12 5 1
0 16 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_4_fault o2
4
5 0
6 0
7 0
12 5
2
0 1 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_4_fault o3
3
5 0
6 0
7 0
5
0 2 -1 0
0 8 -1 0
0 12 5 2
0 16 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_4_fault o3
4
5 0
6 0
7 0
12 5
2
0 2 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_4_fault o4
3
5 0
6 0
7 0
5
0 3 -1 0
0 8 -1 0
0 12 5 3
0 16 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_4_fault o4
4
5 0
6 0
7 0
12 5
2
0 3 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_4_fault o5
3
5 0
6 0
7 0
5
0 4 -1 0
0 8 -1 0
0 12 5 4
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_4_fault o5
4
5 0
6 0
7 0
12 5
2
0 4 -1 0
0 22 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 9 0 5
0 13 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 9 1 5
0 13 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 9 2 5
0 13 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 9 3 5
0 13 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 9 4 5
0 13 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 10 0 5
0 13 -1 0
0 14 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 10 1 5
0 13 -1 0
0 14 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 10 2 5
0 13 -1 0
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 10 3 5
0 13 -1 0
0 14 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_2 o5
0
5
0 4 -1 1
0 10 4 5
0 13 -1 0
0 14 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_3 o1
0
5
0 0 -1 1
0 11 0 5
0 14 -1 0
0 15 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_3 o2
0
5
0 1 -1 1
0 11 1 5
0 14 -1 0
0 15 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_3 o3
0
5
0 2 -1 1
0 11 2 5
0 14 -1 0
0 15 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_3 o4
0
5
0 3 -1 1
0 11 3 5
0 14 -1 0
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_3 o5
0
5
0 4 -1 1
0 11 4 5
0 14 -1 0
0 15 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_4 o1
0
5
0 0 -1 1
0 12 0 5
0 15 -1 0
0 16 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_4 o2
0
5
0 1 -1 1
0 12 1 5
0 15 -1 0
0 16 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_4 o3
0
5
0 2 -1 1
0 12 2 5
0 15 -1 0
0 16 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_4 o4
0
5
0 3 -1 1
0 12 3 5
0 15 -1 0
0 16 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_4 o5
0
5
0 4 -1 1
0 12 4 5
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
0
