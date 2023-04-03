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
2
Atom fault(f5)
NegatedAtom fault(f5)
end_variable
begin_variable
var10
-1
7
Atom faulted_op(o1, f1)
Atom faulted_op(o1, f2)
Atom faulted_op(o1, f3)
Atom faulted_op(o1, f4)
Atom faulted_op(o1, f5)
Atom not_completed(o1)
<none of those>
end_variable
begin_variable
var11
-1
7
Atom faulted_op(o2, f1)
Atom faulted_op(o2, f2)
Atom faulted_op(o2, f3)
Atom faulted_op(o2, f4)
Atom faulted_op(o2, f5)
Atom not_completed(o2)
<none of those>
end_variable
begin_variable
var12
-1
7
Atom faulted_op(o3, f1)
Atom faulted_op(o3, f2)
Atom faulted_op(o3, f3)
Atom faulted_op(o3, f4)
Atom faulted_op(o3, f5)
Atom not_completed(o3)
<none of those>
end_variable
begin_variable
var13
-1
7
Atom faulted_op(o4, f1)
Atom faulted_op(o4, f2)
Atom faulted_op(o4, f3)
Atom faulted_op(o4, f4)
Atom faulted_op(o4, f5)
Atom not_completed(o4)
<none of those>
end_variable
begin_variable
var14
-1
7
Atom faulted_op(o5, f1)
Atom faulted_op(o5, f2)
Atom faulted_op(o5, f3)
Atom faulted_op(o5, f4)
Atom faulted_op(o5, f5)
Atom not_completed(o5)
<none of those>
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
Atom last_fault(f4)
NegatedAtom last_fault(f4)
end_variable
begin_variable
var19
-1
2
Atom last_fault(f5)
NegatedAtom last_fault(f5)
end_variable
begin_variable
var20
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var21
-1
2
Atom not_fault(f1)
NegatedAtom not_fault(f1)
end_variable
begin_variable
var22
-1
2
Atom not_fault(f2)
NegatedAtom not_fault(f2)
end_variable
begin_variable
var23
-1
2
Atom not_fault(f3)
NegatedAtom not_fault(f3)
end_variable
begin_variable
var24
-1
2
Atom not_fault(f4)
NegatedAtom not_fault(f4)
end_variable
begin_variable
var25
-1
2
Atom not_fault(f5)
NegatedAtom not_fault(f5)
end_variable
10
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
10 0
11 0
12 0
13 0
14 0
21 0
end_mutex_group
begin_mutex_group
6
10 1
11 1
12 1
13 1
14 1
22 0
end_mutex_group
begin_mutex_group
6
10 2
11 2
12 2
13 2
14 2
23 0
end_mutex_group
begin_mutex_group
6
10 3
11 3
12 3
13 3
14 3
24 0
end_mutex_group
begin_mutex_group
6
10 4
11 4
12 4
13 4
14 4
25 0
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
6
13 0
13 1
13 2
13 3
13 4
13 5
end_mutex_group
begin_mutex_group
6
14 0
14 1
14 2
14 3
14 4
14 5
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
5
5
5
5
5
1
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
20 0
end_goal
76
begin_operator
finish 
6
0 0
1 0
2 0
3 0
4 0
19 1
1
0 20 -1 0
0
end_operator
begin_operator
perform_operation_1_fault o1
5
21 0
22 0
23 0
24 0
25 0
2
0 0 -1 0
0 10 5 6
0
end_operator
begin_operator
perform_operation_1_fault o1
4
22 0
23 0
24 0
25 0
5
0 0 -1 0
0 5 -1 0
0 10 5 0
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o2
5
21 0
22 0
23 0
24 0
25 0
2
0 1 -1 0
0 11 5 6
0
end_operator
begin_operator
perform_operation_1_fault o2
4
22 0
23 0
24 0
25 0
5
0 1 -1 0
0 5 -1 0
0 11 5 0
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o3
5
21 0
22 0
23 0
24 0
25 0
2
0 2 -1 0
0 12 5 6
0
end_operator
begin_operator
perform_operation_1_fault o3
4
22 0
23 0
24 0
25 0
5
0 2 -1 0
0 5 -1 0
0 12 5 0
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o4
5
21 0
22 0
23 0
24 0
25 0
2
0 3 -1 0
0 13 5 6
0
end_operator
begin_operator
perform_operation_1_fault o4
4
22 0
23 0
24 0
25 0
5
0 3 -1 0
0 5 -1 0
0 13 5 0
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_1_fault o5
5
21 0
22 0
23 0
24 0
25 0
2
0 4 -1 0
0 14 5 6
0
end_operator
begin_operator
perform_operation_1_fault o5
4
22 0
23 0
24 0
25 0
5
0 4 -1 0
0 5 -1 0
0 14 5 0
0 15 -1 0
0 21 0 1
0
end_operator
begin_operator
perform_operation_2_fault o1
5
5 0
22 0
23 0
24 0
25 0
2
0 0 -1 0
0 10 5 6
0
end_operator
begin_operator
perform_operation_2_fault o1
4
5 0
23 0
24 0
25 0
5
0 0 -1 0
0 6 -1 0
0 10 5 1
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o2
5
5 0
22 0
23 0
24 0
25 0
2
0 1 -1 0
0 11 5 6
0
end_operator
begin_operator
perform_operation_2_fault o2
4
5 0
23 0
24 0
25 0
5
0 1 -1 0
0 6 -1 0
0 11 5 1
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o3
5
5 0
22 0
23 0
24 0
25 0
2
0 2 -1 0
0 12 5 6
0
end_operator
begin_operator
perform_operation_2_fault o3
4
5 0
23 0
24 0
25 0
5
0 2 -1 0
0 6 -1 0
0 12 5 1
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o4
5
5 0
22 0
23 0
24 0
25 0
2
0 3 -1 0
0 13 5 6
0
end_operator
begin_operator
perform_operation_2_fault o4
4
5 0
23 0
24 0
25 0
5
0 3 -1 0
0 6 -1 0
0 13 5 1
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_2_fault o5
5
5 0
22 0
23 0
24 0
25 0
2
0 4 -1 0
0 14 5 6
0
end_operator
begin_operator
perform_operation_2_fault o5
4
5 0
23 0
24 0
25 0
5
0 4 -1 0
0 6 -1 0
0 14 5 1
0 16 -1 0
0 22 0 1
0
end_operator
begin_operator
perform_operation_3_fault o1
5
5 0
6 0
23 0
24 0
25 0
2
0 0 -1 0
0 10 5 6
0
end_operator
begin_operator
perform_operation_3_fault o1
4
5 0
6 0
24 0
25 0
5
0 0 -1 0
0 7 -1 0
0 10 5 2
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o2
5
5 0
6 0
23 0
24 0
25 0
2
0 1 -1 0
0 11 5 6
0
end_operator
begin_operator
perform_operation_3_fault o2
4
5 0
6 0
24 0
25 0
5
0 1 -1 0
0 7 -1 0
0 11 5 2
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o3
5
5 0
6 0
23 0
24 0
25 0
2
0 2 -1 0
0 12 5 6
0
end_operator
begin_operator
perform_operation_3_fault o3
4
5 0
6 0
24 0
25 0
5
0 2 -1 0
0 7 -1 0
0 12 5 2
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o4
5
5 0
6 0
23 0
24 0
25 0
2
0 3 -1 0
0 13 5 6
0
end_operator
begin_operator
perform_operation_3_fault o4
4
5 0
6 0
24 0
25 0
5
0 3 -1 0
0 7 -1 0
0 13 5 2
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_3_fault o5
5
5 0
6 0
23 0
24 0
25 0
2
0 4 -1 0
0 14 5 6
0
end_operator
begin_operator
perform_operation_3_fault o5
4
5 0
6 0
24 0
25 0
5
0 4 -1 0
0 7 -1 0
0 14 5 2
0 17 -1 0
0 23 0 1
0
end_operator
begin_operator
perform_operation_4_fault o1
5
5 0
6 0
7 0
24 0
25 0
2
0 0 -1 0
0 10 5 6
0
end_operator
begin_operator
perform_operation_4_fault o1
4
5 0
6 0
7 0
25 0
5
0 0 -1 0
0 8 -1 0
0 10 5 3
0 18 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_4_fault o2
5
5 0
6 0
7 0
24 0
25 0
2
0 1 -1 0
0 11 5 6
0
end_operator
begin_operator
perform_operation_4_fault o2
4
5 0
6 0
7 0
25 0
5
0 1 -1 0
0 8 -1 0
0 11 5 3
0 18 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_4_fault o3
5
5 0
6 0
7 0
24 0
25 0
2
0 2 -1 0
0 12 5 6
0
end_operator
begin_operator
perform_operation_4_fault o3
4
5 0
6 0
7 0
25 0
5
0 2 -1 0
0 8 -1 0
0 12 5 3
0 18 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_4_fault o4
5
5 0
6 0
7 0
24 0
25 0
2
0 3 -1 0
0 13 5 6
0
end_operator
begin_operator
perform_operation_4_fault o4
4
5 0
6 0
7 0
25 0
5
0 3 -1 0
0 8 -1 0
0 13 5 3
0 18 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_4_fault o5
5
5 0
6 0
7 0
24 0
25 0
2
0 4 -1 0
0 14 5 6
0
end_operator
begin_operator
perform_operation_4_fault o5
4
5 0
6 0
7 0
25 0
5
0 4 -1 0
0 8 -1 0
0 14 5 3
0 18 -1 0
0 24 0 1
0
end_operator
begin_operator
perform_operation_5_fault o1
4
5 0
6 0
7 0
8 0
5
0 0 -1 0
0 9 -1 0
0 10 5 4
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_5_fault o1
5
5 0
6 0
7 0
8 0
25 0
2
0 0 -1 0
0 10 5 6
0
end_operator
begin_operator
perform_operation_5_fault o2
4
5 0
6 0
7 0
8 0
5
0 1 -1 0
0 9 -1 0
0 11 5 4
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_5_fault o2
5
5 0
6 0
7 0
8 0
25 0
2
0 1 -1 0
0 11 5 6
0
end_operator
begin_operator
perform_operation_5_fault o3
4
5 0
6 0
7 0
8 0
5
0 2 -1 0
0 9 -1 0
0 12 5 4
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_5_fault o3
5
5 0
6 0
7 0
8 0
25 0
2
0 2 -1 0
0 12 5 6
0
end_operator
begin_operator
perform_operation_5_fault o4
4
5 0
6 0
7 0
8 0
5
0 3 -1 0
0 9 -1 0
0 13 5 4
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_5_fault o4
5
5 0
6 0
7 0
8 0
25 0
2
0 3 -1 0
0 13 5 6
0
end_operator
begin_operator
perform_operation_5_fault o5
4
5 0
6 0
7 0
8 0
5
0 4 -1 0
0 9 -1 0
0 14 5 4
0 19 -1 0
0 25 0 1
0
end_operator
begin_operator
perform_operation_5_fault o5
5
5 0
6 0
7 0
8 0
25 0
2
0 4 -1 0
0 14 5 6
0
end_operator
begin_operator
repair_fault_1 o1
0
4
0 0 -1 1
0 10 0 5
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o2
0
4
0 1 -1 1
0 11 0 5
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o3
0
4
0 2 -1 1
0 12 0 5
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o4
0
4
0 3 -1 1
0 13 0 5
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_1 o5
0
4
0 4 -1 1
0 14 0 5
0 15 0 1
0 21 -1 0
0
end_operator
begin_operator
repair_fault_2 o1
0
5
0 0 -1 1
0 10 1 5
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o2
0
5
0 1 -1 1
0 11 1 5
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o3
0
5
0 2 -1 1
0 12 1 5
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_2 o4
0
5
0 3 -1 1
0 13 1 5
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
0 14 1 5
0 15 -1 0
0 16 0 1
0 22 -1 0
0
end_operator
begin_operator
repair_fault_3 o1
0
5
0 0 -1 1
0 10 2 5
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o2
0
5
0 1 -1 1
0 11 2 5
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o3
0
5
0 2 -1 1
0 12 2 5
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o4
0
5
0 3 -1 1
0 13 2 5
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_3 o5
0
5
0 4 -1 1
0 14 2 5
0 16 -1 0
0 17 0 1
0 23 -1 0
0
end_operator
begin_operator
repair_fault_4 o1
0
5
0 0 -1 1
0 10 3 5
0 17 -1 0
0 18 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_4 o2
0
5
0 1 -1 1
0 11 3 5
0 17 -1 0
0 18 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_4 o3
0
5
0 2 -1 1
0 12 3 5
0 17 -1 0
0 18 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_4 o4
0
5
0 3 -1 1
0 13 3 5
0 17 -1 0
0 18 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_4 o5
0
5
0 4 -1 1
0 14 3 5
0 17 -1 0
0 18 0 1
0 24 -1 0
0
end_operator
begin_operator
repair_fault_5 o1
0
5
0 0 -1 1
0 10 4 5
0 18 -1 0
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_5 o2
0
5
0 1 -1 1
0 11 4 5
0 18 -1 0
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_5 o3
0
5
0 2 -1 1
0 12 4 5
0 18 -1 0
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_5 o4
0
5
0 3 -1 1
0 13 4 5
0 18 -1 0
0 19 0 1
0 25 -1 0
0
end_operator
begin_operator
repair_fault_5 o5
0
5
0 4 -1 1
0 14 4 5
0 18 -1 0
0 19 0 1
0 25 -1 0
0
end_operator
0
