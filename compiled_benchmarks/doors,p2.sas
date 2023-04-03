begin_version
3
end_version
begin_metric
0
end_metric
8
begin_variable
var0
-1
2
Atom closed(d2)
NegatedAtom closed(d2)
end_variable
begin_variable
var1
-1
2
Atom closed(d3)
NegatedAtom closed(d3)
end_variable
begin_variable
var2
-1
2
Atom closed(d4)
NegatedAtom closed(d4)
end_variable
begin_variable
var3
-1
2
Atom hold-key()
NegatedAtom hold-key()
end_variable
begin_variable
var4
-1
2
Atom open(d2)
NegatedAtom open(d2)
end_variable
begin_variable
var5
-1
2
Atom open(d3)
NegatedAtom open(d3)
end_variable
begin_variable
var6
-1
2
Atom open(d4)
NegatedAtom open(d4)
end_variable
begin_variable
var7
-1
4
Atom player-at(l1)
Atom player-at(l2)
Atom player-at(l3)
Atom player-at(l4)
end_variable
1
begin_mutex_group
4
7 0
7 1
7 2
7 3
end_mutex_group
begin_state
1
1
1
1
0
0
0
0
end_state
begin_goal
1
7 3
end_goal
21
begin_operator
move-forward-door-closed l1 l2 d2 d3
0
5
0 0 0 1
0 1 -1 0
0 4 -1 0
0 5 -1 1
0 7 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
0
5
0 0 0 1
0 1 -1 1
0 4 -1 0
0 5 -1 0
0 7 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
1
0 0
4
0 1 -1 0
0 4 -1 1
0 5 -1 1
0 7 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
1
0 0
4
0 1 -1 1
0 4 -1 1
0 5 -1 0
0 7 0 1
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
0
5
0 1 0 1
0 2 -1 0
0 5 -1 0
0 6 -1 1
0 7 1 2
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
0
5
0 1 0 1
0 2 -1 1
0 5 -1 0
0 6 -1 0
0 7 1 2
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
1
1 0
4
0 2 -1 0
0 5 -1 1
0 6 -1 1
0 7 1 2
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
1
1 0
4
0 2 -1 1
0 5 -1 1
0 6 -1 0
0 7 1 2
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
0
5
0 0 -1 0
0 1 -1 0
0 4 0 1
0 5 -1 1
0 7 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
0
5
0 0 -1 0
0 1 -1 1
0 4 0 1
0 5 -1 0
0 7 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
1
4 0
4
0 0 -1 1
0 1 -1 0
0 5 -1 1
0 7 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
1
4 0
4
0 0 -1 1
0 1 -1 1
0 5 -1 0
0 7 0 1
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
0
5
0 1 -1 0
0 2 -1 0
0 5 0 1
0 6 -1 1
0 7 1 2
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
0
5
0 1 -1 0
0 2 -1 1
0 5 0 1
0 6 -1 0
0 7 1 2
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
1
5 0
4
0 1 -1 1
0 2 -1 0
0 6 -1 1
0 7 1 2
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
1
5 0
4
0 1 -1 1
0 2 -1 1
0 6 -1 0
0 7 1 2
0
end_operator
begin_operator
move-forward-last-door-closed l3 l4 d4
2
2 0
3 0
2
0 6 -1 1
0 7 2 3
0
end_operator
begin_operator
move-forward-last-door-closed l3 l4 d4
1
3 0
3
0 2 0 1
0 6 -1 0
0 7 2 3
0
end_operator
begin_operator
move-forward-last-door-open l3 l4 d4
0
3
0 2 -1 0
0 6 0 1
0 7 2 3
0
end_operator
begin_operator
move-forward-last-door-open l3 l4 d4
1
6 0
2
0 2 -1 1
0 7 2 3
0
end_operator
begin_operator
pick-key l1
1
7 0
1
0 3 -1 0
0
end_operator
0
