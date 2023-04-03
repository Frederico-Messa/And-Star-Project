begin_version
3
end_version
begin_metric
0
end_metric
5
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
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var2
-1
3
Atom faulted_op(o1, f1)
Atom not_completed(o1)
<none of those>
end_variable
begin_variable
var3
-1
2
Atom last_fault(f1)
Atom not_fault(f1)
end_variable
begin_variable
var4
-1
2
Atom made()
NegatedAtom made()
end_variable
5
begin_mutex_group
2
2 0
2 1
end_mutex_group
begin_mutex_group
2
2 0
3 1
end_mutex_group
begin_mutex_group
2
3 0
2 1
end_mutex_group
begin_mutex_group
2
3 0
3 1
end_mutex_group
begin_mutex_group
2
3 0
3 1
end_mutex_group
begin_state
1
1
1
1
1
end_state
begin_goal
1
4 0
end_goal
4
begin_operator
finish_v1 
2
0 0
3 1
1
0 4 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
0
4
0 0 -1 0
0 1 -1 0
0 2 1 0
0 3 1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
1
3 1
2
0 0 -1 0
0 2 1 2
0
end_operator
begin_operator
repair_fault_1 o1
0
3
0 0 -1 1
0 2 0 1
0 3 0 1
0
end_operator
0
