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
Atom at(f1, p1)
NegatedAtom at(f1, p1)
end_variable
begin_variable
var1
-1
2
Atom at(f1, p2)
NegatedAtom at(f1, p2)
end_variable
begin_variable
var2
-1
2
Atom at(f1, p3)
NegatedAtom at(f1, p3)
end_variable
begin_variable
var3
-1
2
Atom at(f1, p4)
NegatedAtom at(f1, p4)
end_variable
begin_variable
var4
-1
2
Atom at(f2, p1)
NegatedAtom at(f2, p1)
end_variable
begin_variable
var5
-1
2
Atom at(f2, p2)
NegatedAtom at(f2, p2)
end_variable
begin_variable
var6
-1
2
Atom at(f2, p3)
NegatedAtom at(f2, p3)
end_variable
begin_variable
var7
-1
2
Atom at(f2, p4)
NegatedAtom at(f2, p4)
end_variable
begin_variable
var8
-1
2
Atom at(f3, p1)
NegatedAtom at(f3, p1)
end_variable
begin_variable
var9
-1
2
Atom at(f3, p2)
NegatedAtom at(f3, p2)
end_variable
begin_variable
var10
-1
2
Atom at(f3, p3)
NegatedAtom at(f3, p3)
end_variable
begin_variable
var11
-1
2
Atom at(f3, p4)
NegatedAtom at(f3, p4)
end_variable
begin_variable
var12
-1
2
Atom coin-at(c1, f2, p1)
NegatedAtom coin-at(c1, f2, p1)
end_variable
begin_variable
var13
-1
2
Atom coin-at(c2, f3, p1)
NegatedAtom coin-at(c2, f3, p1)
end_variable
begin_variable
var14
-1
2
Atom coin-at(c3, f1, p3)
NegatedAtom coin-at(c3, f1, p3)
end_variable
begin_variable
var15
-1
2
Atom have(c1)
NegatedAtom have(c1)
end_variable
begin_variable
var16
-1
2
Atom have(c2)
NegatedAtom have(c2)
end_variable
begin_variable
var17
-1
2
Atom have(c3)
NegatedAtom have(c3)
end_variable
begin_variable
var18
-1
3
Atom in(e1, f1)
Atom in(e1, f2)
Atom in(e1, f3)
end_variable
begin_variable
var19
-1
3
Atom in(e2, f1)
Atom in(e2, f2)
Atom in(e2, f3)
end_variable
begin_variable
var20
-1
2
Atom inside(e1)
NegatedAtom inside(e1)
end_variable
begin_variable
var21
-1
2
Atom inside(e2)
NegatedAtom inside(e2)
end_variable
2
begin_mutex_group
3
18 0
18 1
18 2
end_mutex_group
begin_mutex_group
3
19 0
19 1
19 2
end_mutex_group
begin_state
0
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
0
0
0
1
1
1
0
1
1
1
end_state
begin_goal
3
15 0
16 0
17 0
end_goal
44
begin_operator
collect c1 f2 p1
1
4 0
2
0 12 0 1
0 15 -1 0
0
end_operator
begin_operator
collect c2 f3 p1
1
8 0
2
0 13 0 1
0 16 -1 0
0
end_operator
begin_operator
collect c3 f1 p3
1
2 0
2
0 14 0 1
0 17 -1 0
0
end_operator
begin_operator
go-down e1 f2 f1
0
1
0 18 1 0
0
end_operator
begin_operator
go-down e1 f3 f2
0
1
0 18 2 1
0
end_operator
begin_operator
go-down e2 f2 f1
0
1
0 19 1 0
0
end_operator
begin_operator
go-down e2 f3 f2
0
1
0 19 2 1
0
end_operator
begin_operator
go-up e1 f1 f2
0
1
0 18 0 1
0
end_operator
begin_operator
go-up e1 f2 f3
0
1
0 18 1 2
0
end_operator
begin_operator
go-up e2 f1 f2
0
1
0 19 0 1
0
end_operator
begin_operator
go-up e2 f2 f3
0
1
0 19 1 2
0
end_operator
begin_operator
move-left-gate f2 p4 p3
0
2
0 0 -1 0
0 7 0 1
0
end_operator
begin_operator
move-left-gate f2 p4 p3
0
2
0 6 -1 0
0 7 0 1
0
end_operator
begin_operator
move-left-gate f3 p2 p1
0
2
0 0 -1 0
0 9 0 1
0
end_operator
begin_operator
move-left-gate f3 p2 p1
0
2
0 8 -1 0
0 9 0 1
0
end_operator
begin_operator
move-left-nogate f1 p2 p1
0
2
0 0 -1 0
0 1 0 1
0
end_operator
begin_operator
move-left-nogate f1 p3 p2
0
2
0 1 -1 0
0 2 0 1
0
end_operator
begin_operator
move-left-nogate f1 p4 p3
0
2
0 2 -1 0
0 3 0 1
0
end_operator
begin_operator
move-left-nogate f2 p2 p1
0
2
0 4 -1 0
0 5 0 1
0
end_operator
begin_operator
move-left-nogate f2 p3 p2
0
2
0 5 -1 0
0 6 0 1
0
end_operator
begin_operator
move-left-nogate f3 p3 p2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
move-left-nogate f3 p4 p3
0
2
0 10 -1 0
0 11 0 1
0
end_operator
begin_operator
move-right-gate f3 p2 p3
0
2
0 0 -1 0
0 9 0 1
0
end_operator
begin_operator
move-right-gate f3 p2 p3
0
2
0 9 0 1
0 10 -1 0
0
end_operator
begin_operator
move-right-nogate f1 p1 p2
0
2
0 0 0 1
0 1 -1 0
0
end_operator
begin_operator
move-right-nogate f1 p2 p3
0
2
0 1 0 1
0 2 -1 0
0
end_operator
begin_operator
move-right-nogate f1 p3 p4
0
2
0 2 0 1
0 3 -1 0
0
end_operator
begin_operator
move-right-nogate f2 p1 p2
0
2
0 4 0 1
0 5 -1 0
0
end_operator
begin_operator
move-right-nogate f2 p2 p3
0
2
0 5 0 1
0 6 -1 0
0
end_operator
begin_operator
move-right-nogate f2 p3 p4
0
2
0 6 0 1
0 7 -1 0
0
end_operator
begin_operator
move-right-nogate f3 p1 p2
0
2
0 8 0 1
0 9 -1 0
0
end_operator
begin_operator
move-right-nogate f3 p3 p4
0
2
0 10 0 1
0 11 -1 0
0
end_operator
begin_operator
step-in e1 f1 p1
1
18 0
2
0 0 0 1
0 20 -1 0
0
end_operator
begin_operator
step-in e1 f2 p1
1
18 1
2
0 4 0 1
0 20 -1 0
0
end_operator
begin_operator
step-in e1 f3 p1
1
18 2
2
0 8 0 1
0 20 -1 0
0
end_operator
begin_operator
step-in e2 f1 p1
1
19 0
2
0 0 0 1
0 21 -1 0
0
end_operator
begin_operator
step-in e2 f2 p1
1
19 1
2
0 4 0 1
0 21 -1 0
0
end_operator
begin_operator
step-in e2 f3 p1
1
19 2
2
0 8 0 1
0 21 -1 0
0
end_operator
begin_operator
step-out e1 f1 p1
1
18 0
2
0 0 -1 0
0 20 0 1
0
end_operator
begin_operator
step-out e1 f2 p1
1
18 1
2
0 4 -1 0
0 20 0 1
0
end_operator
begin_operator
step-out e1 f3 p1
1
18 2
2
0 8 -1 0
0 20 0 1
0
end_operator
begin_operator
step-out e2 f1 p1
1
19 0
2
0 0 -1 0
0 21 0 1
0
end_operator
begin_operator
step-out e2 f2 p1
1
19 1
2
0 4 -1 0
0 21 0 1
0
end_operator
begin_operator
step-out e2 f3 p1
1
19 2
2
0 8 -1 0
0 21 0 1
0
end_operator
0
