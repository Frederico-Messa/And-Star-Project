begin_version
3
end_version
begin_metric
0
end_metric
6
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
Atom hold-key()
NegatedAtom hold-key()
end_variable
begin_variable
var3
-1
2
Atom open(d2)
NegatedAtom open(d2)
end_variable
begin_variable
var4
-1
2
Atom open(d3)
NegatedAtom open(d3)
end_variable
begin_variable
var5
-1
3
Atom player-at(l1)
Atom player-at(l2)
Atom player-at(l3)
end_variable
1
begin_mutex_group
3
5 0
5 1
5 2
end_mutex_group
begin_state
1
1
1
0
0
0
end_state
begin_goal
1
5 2
end_goal
13
begin_operator
move-forward-door-closed l1 l2 d2 d3
0
5
0 0 0 1
0 1 -1 0
0 3 -1 0
0 4 -1 1
0 5 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
0
5
0 0 0 1
0 1 -1 1
0 3 -1 0
0 4 -1 0
0 5 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
1
0 0
4
0 1 -1 0
0 3 -1 1
0 4 -1 1
0 5 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
1
0 0
4
0 1 -1 1
0 3 -1 1
0 4 -1 0
0 5 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
0
5
0 0 -1 0
0 1 -1 0
0 3 0 1
0 4 -1 1
0 5 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
0
5
0 0 -1 0
0 1 -1 1
0 3 0 1
0 4 -1 0
0 5 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
1
3 0
4
0 0 -1 1
0 1 -1 0
0 4 -1 1
0 5 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
1
3 0
4
0 0 -1 1
0 1 -1 1
0 4 -1 0
0 5 0 1
0
end_operator
begin_operator
move-forward-last-door-closed l2 l3 d3
2
1 0
2 0
2
0 4 -1 1
0 5 1 2
0
end_operator
begin_operator
move-forward-last-door-closed l2 l3 d3
1
2 0
3
0 1 0 1
0 4 -1 0
0 5 1 2
0
end_operator
begin_operator
move-forward-last-door-open l2 l3 d3
0
3
0 1 -1 0
0 4 0 1
0 5 1 2
0
end_operator
begin_operator
move-forward-last-door-open l2 l3 d3
1
4 0
2
0 1 -1 1
0 5 1 2
0
end_operator
begin_operator
pick-key l1
1
5 0
1
0 2 -1 0
0
end_operator
0
