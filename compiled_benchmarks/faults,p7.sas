begin_version
3
end_version
begin_metric
0
end_metric
12
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
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var5
-1
5
Atom faulted_op(o1, f1)
Atom faulted_op(o2, f1)
Atom faulted_op(o3, f1)
Atom faulted_op(o4, f1)
Atom not_fault(f1)
end_variable
begin_variable
var6
-1
2
Atom last_fault(f1)
NegatedAtom last_fault(f1)
end_variable
begin_variable
var7
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var8
-1
2
Atom not_completed(o1)
NegatedAtom not_completed(o1)
end_variable
begin_variable
var9
-1
2
Atom not_completed(o2)
NegatedAtom not_completed(o2)
end_variable
begin_variable
var10
-1
2
Atom not_completed(o3)
NegatedAtom not_completed(o3)
end_variable
begin_variable
var11
-1
2
Atom not_completed(o4)
NegatedAtom not_completed(o4)
end_variable
7
begin_mutex_group
5
5 0
5 1
5 2
5 3
5 4
end_mutex_group
begin_mutex_group
2
5 0
8 0
end_mutex_group
begin_mutex_group
2
5 1
9 0
end_mutex_group
begin_mutex_group
2
5 2
10 0
end_mutex_group
begin_mutex_group
2
5 3
11 0
end_mutex_group
begin_mutex_group
2
6 0
5 4
end_mutex_group
begin_mutex_group
2
6 0
5 4
end_mutex_group
begin_state
1
1
1
1
1
4
1
1
0
0
0
0
end_state
begin_goal
1
7 0
end_goal
13
begin_operator
finish 
5
0 0
1 0
2 0
3 0
6 1
1
0 7 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
0
5
0 0 -1 0
0 4 -1 0
0 5 4 0
0 6 -1 0
0 8 0 1
0
end_operator
begin_operator
perform_operation_1_fault o1
1
5 4
2
0 0 -1 0
0 8 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
0
5
0 1 -1 0
0 4 -1 0
0 5 4 1
0 6 -1 0
0 9 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
1
5 4
2
0 1 -1 0
0 9 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
0
5
0 2 -1 0
0 4 -1 0
0 5 4 2
0 6 -1 0
0 10 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
1
5 4
2
0 2 -1 0
0 10 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
0
5
0 3 -1 0
0 4 -1 0
0 5 4 3
0 6 -1 0
0 11 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
1
5 4
2
0 3 -1 0
0 11 0 1
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 5 0 4
0 6 0 1
0 8 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 5 1 4
0 6 0 1
0 9 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 5 2 4
0 6 0 1
0 10 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 5 3 4
0 6 0 1
0 11 -1 0
0
end_operator
0
