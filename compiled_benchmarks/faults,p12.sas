begin_version
3
end_version
begin_metric
0
end_metric
17
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
6
Atom faulted_op(o1, f1)
Atom faulted_op(o2, f1)
Atom faulted_op(o3, f1)
Atom faulted_op(o4, f1)
Atom faulted_op(o5, f1)
Atom not_fault(f1)
end_variable
begin_variable
var8
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
var9
-1
2
Atom last_fault(f1)
NegatedAtom last_fault(f1)
end_variable
begin_variable
var10
-1
2
Atom last_fault(f2)
NegatedAtom last_fault(f2)
end_variable
begin_variable
var11
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var12
-1
2
Atom not_completed(o1)
NegatedAtom not_completed(o1)
end_variable
begin_variable
var13
-1
2
Atom not_completed(o2)
NegatedAtom not_completed(o2)
end_variable
begin_variable
var14
-1
2
Atom not_completed(o3)
NegatedAtom not_completed(o3)
end_variable
begin_variable
var15
-1
2
Atom not_completed(o4)
NegatedAtom not_completed(o4)
end_variable
begin_variable
var16
-1
2
Atom not_completed(o5)
NegatedAtom not_completed(o5)
end_variable
7
begin_mutex_group
3
7 0
8 0
12 0
end_mutex_group
begin_mutex_group
6
7 0
7 1
7 2
7 3
7 4
7 5
end_mutex_group
begin_mutex_group
6
8 0
8 1
8 2
8 3
8 4
8 5
end_mutex_group
begin_mutex_group
3
7 1
8 1
13 0
end_mutex_group
begin_mutex_group
3
7 2
8 2
14 0
end_mutex_group
begin_mutex_group
3
7 3
8 3
15 0
end_mutex_group
begin_mutex_group
3
7 4
8 4
16 0
end_mutex_group
begin_state
1
1
1
1
1
1
1
5
5
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
11 0
end_goal
31
begin_operator
finish 
6
0 0
1 0
2 0
3 0
4 0
10 1
1
0 11 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
2
7 5
8 5
2
0 0 -1 0
0 12 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
1
8 5
5
0 0 -1 0
0 5 -1 0
0 7 5 0
0 9 -1 0
0 12 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
2
7 5
8 5
2
0 1 -1 0
0 13 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
1
8 5
5
0 1 -1 0
0 5 -1 0
0 7 5 1
0 9 -1 0
0 13 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
2
7 5
8 5
2
0 2 -1 0
0 14 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
1
8 5
5
0 2 -1 0
0 5 -1 0
0 7 5 2
0 9 -1 0
0 14 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
2
7 5
8 5
2
0 3 -1 0
0 15 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
1
8 5
5
0 3 -1 0
0 5 -1 0
0 7 5 3
0 9 -1 0
0 15 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
2
7 5
8 5
2
0 4 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
1
8 5
5
0 4 -1 0
0 5 -1 0
0 7 5 4
0 9 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
1
5 0
5
0 0 -1 0
0 6 -1 0
0 8 5 0
0 10 -1 0
0 12 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
2
5 0
8 5
2
0 0 -1 0
0 12 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
1
5 0
5
0 1 -1 0
0 6 -1 0
0 8 5 1
0 10 -1 0
0 13 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
2
5 0
8 5
2
0 1 -1 0
0 13 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
1
5 0
5
0 2 -1 0
0 6 -1 0
0 8 5 2
0 10 -1 0
0 14 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
2
5 0
8 5
2
0 2 -1 0
0 14 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
1
5 0
5
0 3 -1 0
0 6 -1 0
0 8 5 3
0 10 -1 0
0 15 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
2
5 0
8 5
2
0 3 -1 0
0 15 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
1
5 0
5
0 4 -1 0
0 6 -1 0
0 8 5 4
0 10 -1 0
0 16 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
2
5 0
8 5
2
0 4 -1 0
0 16 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 7 0 5
0 9 0 1
0 12 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 7 1 5
0 9 0 1
0 13 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 7 2 5
0 9 0 1
0 14 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 7 3 5
0 9 0 1
0 15 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 7 4 5
0 9 0 1
0 16 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 8 0 5
0 9 -1 0
0 10 0 1
0 12 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 8 1 5
0 9 -1 0
0 10 0 1
0 13 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 8 2 5
0 9 -1 0
0 10 0 1
0 14 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 8 3 5
0 9 -1 0
0 10 0 1
0 15 -1 0
0
end_operator
begin_operator
repair_fault_2 o5
0
5
0 4 -1 1
0 8 4 5
0 9 -1 0
0 10 0 1
0 16 -1 0
0
end_operator
0
