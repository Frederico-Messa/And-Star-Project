begin_version
3
end_version
begin_metric
0
end_metric
22
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
var10
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
var11
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
var12
-1
2
Atom last_fault(f1)
NegatedAtom last_fault(f1)
end_variable
begin_variable
var13
-1
2
Atom last_fault(f2)
NegatedAtom last_fault(f2)
end_variable
begin_variable
var14
-1
2
Atom last_fault(f3)
NegatedAtom last_fault(f3)
end_variable
begin_variable
var15
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var16
-1
2
Atom not_completed(o1)
NegatedAtom not_completed(o1)
end_variable
begin_variable
var17
-1
2
Atom not_completed(o2)
NegatedAtom not_completed(o2)
end_variable
begin_variable
var18
-1
2
Atom not_completed(o3)
NegatedAtom not_completed(o3)
end_variable
begin_variable
var19
-1
2
Atom not_completed(o4)
NegatedAtom not_completed(o4)
end_variable
begin_variable
var20
-1
2
Atom not_completed(o5)
NegatedAtom not_completed(o5)
end_variable
begin_variable
var21
-1
2
Atom not_completed(o6)
NegatedAtom not_completed(o6)
end_variable
9
begin_mutex_group
4
9 0
10 0
11 0
16 0
end_mutex_group
begin_mutex_group
7
9 0
9 1
9 2
9 3
9 4
9 5
9 6
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
4
9 1
10 1
11 1
17 0
end_mutex_group
begin_mutex_group
4
9 2
10 2
11 2
18 0
end_mutex_group
begin_mutex_group
4
9 3
10 3
11 3
19 0
end_mutex_group
begin_mutex_group
4
9 4
10 4
11 4
20 0
end_mutex_group
begin_mutex_group
4
9 5
10 5
11 5
21 0
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
6
6
6
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
15 0
end_goal
55
begin_operator
finish 
7
0 0
1 0
2 0
3 0
4 0
5 0
14 1
1
0 15 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
3
9 6
10 6
11 6
2
0 0 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
2
10 6
11 6
5
0 0 -1 0
0 6 -1 0
0 9 6 0
0 12 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
3
9 6
10 6
11 6
2
0 1 -1 0
0 17 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
2
10 6
11 6
5
0 1 -1 0
0 6 -1 0
0 9 6 1
0 12 -1 0
0 17 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
3
9 6
10 6
11 6
2
0 2 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
2
10 6
11 6
5
0 2 -1 0
0 6 -1 0
0 9 6 2
0 12 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
3
9 6
10 6
11 6
2
0 3 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
2
10 6
11 6
5
0 3 -1 0
0 6 -1 0
0 9 6 3
0 12 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
3
9 6
10 6
11 6
2
0 4 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
2
10 6
11 6
5
0 4 -1 0
0 6 -1 0
0 9 6 4
0 12 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
3
9 6
10 6
11 6
2
0 5 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o6
2
10 6
11 6
5
0 5 -1 0
0 6 -1 0
0 9 6 5
0 12 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
3
6 0
10 6
11 6
2
0 0 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
2
6 0
11 6
5
0 0 -1 0
0 7 -1 0
0 10 6 0
0 13 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
3
6 0
10 6
11 6
2
0 1 -1 0
0 17 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
2
6 0
11 6
5
0 1 -1 0
0 7 -1 0
0 10 6 1
0 13 -1 0
0 17 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
3
6 0
10 6
11 6
2
0 2 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
2
6 0
11 6
5
0 2 -1 0
0 7 -1 0
0 10 6 2
0 13 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
3
6 0
10 6
11 6
2
0 3 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
2
6 0
11 6
5
0 3 -1 0
0 7 -1 0
0 10 6 3
0 13 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
3
6 0
10 6
11 6
2
0 4 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
2
6 0
11 6
5
0 4 -1 0
0 7 -1 0
0 10 6 4
0 13 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
3
6 0
10 6
11 6
2
0 5 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o6
2
6 0
11 6
5
0 5 -1 0
0 7 -1 0
0 10 6 5
0 13 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
2
6 0
7 0
5
0 0 -1 0
0 8 -1 0
0 11 6 0
0 14 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
3
6 0
7 0
11 6
2
0 0 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
2
6 0
7 0
5
0 1 -1 0
0 8 -1 0
0 11 6 1
0 14 -1 0
0 17 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
3
6 0
7 0
11 6
2
0 1 -1 0
0 17 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
2
6 0
7 0
5
0 2 -1 0
0 8 -1 0
0 11 6 2
0 14 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
3
6 0
7 0
11 6
2
0 2 -1 0
0 18 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
2
6 0
7 0
5
0 3 -1 0
0 8 -1 0
0 11 6 3
0 14 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
3
6 0
7 0
11 6
2
0 3 -1 0
0 19 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
2
6 0
7 0
5
0 4 -1 0
0 8 -1 0
0 11 6 4
0 14 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
3
6 0
7 0
11 6
2
0 4 -1 0
0 20 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
2
6 0
7 0
5
0 5 -1 0
0 8 -1 0
0 11 6 5
0 14 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_3_fault o6
3
6 0
7 0
11 6
2
0 5 -1 0
0 21 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 9 0 6
0 12 0 1
0 16 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 9 1 6
0 12 0 1
0 17 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 9 2 6
0 12 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 9 3 6
0 12 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 9 4 6
0 12 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_1 o6
0
4
0 5 -1 1
0 9 5 6
0 12 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 10 0 6
0 12 -1 0
0 13 0 1
0 16 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 10 1 6
0 12 -1 0
0 13 0 1
0 17 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 10 2 6
0 12 -1 0
0 13 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 10 3 6
0 12 -1 0
0 13 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_2 o5
0
5
0 4 -1 1
0 10 4 6
0 12 -1 0
0 13 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_2 o6
0
5
0 5 -1 1
0 10 5 6
0 12 -1 0
0 13 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_3 o1
0
5
0 0 -1 1
0 11 0 6
0 13 -1 0
0 14 0 1
0 16 -1 0
0
end_operator
begin_operator
repair_fault_3 o2
0
5
0 1 -1 1
0 11 1 6
0 13 -1 0
0 14 0 1
0 17 -1 0
0
end_operator
begin_operator
repair_fault_3 o3
0
5
0 2 -1 1
0 11 2 6
0 13 -1 0
0 14 0 1
0 18 -1 0
0
end_operator
begin_operator
repair_fault_3 o4
0
5
0 3 -1 1
0 11 3 6
0 13 -1 0
0 14 0 1
0 19 -1 0
0
end_operator
begin_operator
repair_fault_3 o5
0
5
0 4 -1 1
0 11 4 6
0 13 -1 0
0 14 0 1
0 20 -1 0
0
end_operator
begin_operator
repair_fault_3 o6
0
5
0 5 -1 1
0 11 5 6
0 13 -1 0
0 14 0 1
0 21 -1 0
0
end_operator
0
