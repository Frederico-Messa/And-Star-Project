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
Atom closed(d5)
NegatedAtom closed(d5)
end_variable
begin_variable
var4
-1
2
Atom closed(d6)
NegatedAtom closed(d6)
end_variable
begin_variable
var5
-1
2
Atom hold-key()
NegatedAtom hold-key()
end_variable
begin_variable
var6
-1
2
Atom open(d2)
NegatedAtom open(d2)
end_variable
begin_variable
var7
-1
2
Atom open(d3)
NegatedAtom open(d3)
end_variable
begin_variable
var8
-1
2
Atom open(d4)
NegatedAtom open(d4)
end_variable
begin_variable
var9
-1
2
Atom open(d5)
NegatedAtom open(d5)
end_variable
begin_variable
var10
-1
2
Atom open(d6)
NegatedAtom open(d6)
end_variable
begin_variable
var11
-1
6
Atom player-at(l1)
Atom player-at(l2)
Atom player-at(l3)
Atom player-at(l4)
Atom player-at(l5)
Atom player-at(l6)
end_variable
1
begin_mutex_group
6
11 0
11 1
11 2
11 3
11 4
11 5
end_mutex_group
begin_state
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
0
end_state
begin_goal
1
11 5
end_goal
37
begin_operator
move-forward-door-closed l1 l2 d2 d3
0
5
0 0 0 1
0 1 -1 0
0 6 -1 0
0 7 -1 1
0 11 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
0
5
0 0 0 1
0 1 -1 1
0 6 -1 0
0 7 -1 0
0 11 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
1
0 0
4
0 1 -1 0
0 6 -1 1
0 7 -1 1
0 11 0 1
0
end_operator
begin_operator
move-forward-door-closed l1 l2 d2 d3
1
0 0
4
0 1 -1 1
0 6 -1 1
0 7 -1 0
0 11 0 1
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
0
5
0 1 0 1
0 2 -1 0
0 7 -1 0
0 8 -1 1
0 11 1 2
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
0
5
0 1 0 1
0 2 -1 1
0 7 -1 0
0 8 -1 0
0 11 1 2
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
1
1 0
4
0 2 -1 0
0 7 -1 1
0 8 -1 1
0 11 1 2
0
end_operator
begin_operator
move-forward-door-closed l2 l3 d3 d4
1
1 0
4
0 2 -1 1
0 7 -1 1
0 8 -1 0
0 11 1 2
0
end_operator
begin_operator
move-forward-door-closed l3 l4 d4 d5
0
5
0 2 0 1
0 3 -1 0
0 8 -1 0
0 9 -1 1
0 11 2 3
0
end_operator
begin_operator
move-forward-door-closed l3 l4 d4 d5
0
5
0 2 0 1
0 3 -1 1
0 8 -1 0
0 9 -1 0
0 11 2 3
0
end_operator
begin_operator
move-forward-door-closed l3 l4 d4 d5
1
2 0
4
0 3 -1 0
0 8 -1 1
0 9 -1 1
0 11 2 3
0
end_operator
begin_operator
move-forward-door-closed l3 l4 d4 d5
1
2 0
4
0 3 -1 1
0 8 -1 1
0 9 -1 0
0 11 2 3
0
end_operator
begin_operator
move-forward-door-closed l4 l5 d5 d6
0
5
0 3 0 1
0 4 -1 0
0 9 -1 0
0 10 -1 1
0 11 3 4
0
end_operator
begin_operator
move-forward-door-closed l4 l5 d5 d6
0
5
0 3 0 1
0 4 -1 1
0 9 -1 0
0 10 -1 0
0 11 3 4
0
end_operator
begin_operator
move-forward-door-closed l4 l5 d5 d6
1
3 0
4
0 4 -1 0
0 9 -1 1
0 10 -1 1
0 11 3 4
0
end_operator
begin_operator
move-forward-door-closed l4 l5 d5 d6
1
3 0
4
0 4 -1 1
0 9 -1 1
0 10 -1 0
0 11 3 4
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
0
5
0 0 -1 0
0 1 -1 0
0 6 0 1
0 7 -1 1
0 11 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
0
5
0 0 -1 0
0 1 -1 1
0 6 0 1
0 7 -1 0
0 11 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
1
6 0
4
0 0 -1 1
0 1 -1 0
0 7 -1 1
0 11 0 1
0
end_operator
begin_operator
move-forward-door-open l1 l2 d2 d3
1
6 0
4
0 0 -1 1
0 1 -1 1
0 7 -1 0
0 11 0 1
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
0
5
0 1 -1 0
0 2 -1 0
0 7 0 1
0 8 -1 1
0 11 1 2
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
0
5
0 1 -1 0
0 2 -1 1
0 7 0 1
0 8 -1 0
0 11 1 2
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
1
7 0
4
0 1 -1 1
0 2 -1 0
0 8 -1 1
0 11 1 2
0
end_operator
begin_operator
move-forward-door-open l2 l3 d3 d4
1
7 0
4
0 1 -1 1
0 2 -1 1
0 8 -1 0
0 11 1 2
0
end_operator
begin_operator
move-forward-door-open l3 l4 d4 d5
0
5
0 2 -1 0
0 3 -1 0
0 8 0 1
0 9 -1 1
0 11 2 3
0
end_operator
begin_operator
move-forward-door-open l3 l4 d4 d5
0
5
0 2 -1 0
0 3 -1 1
0 8 0 1
0 9 -1 0
0 11 2 3
0
end_operator
begin_operator
move-forward-door-open l3 l4 d4 d5
1
8 0
4
0 2 -1 1
0 3 -1 0
0 9 -1 1
0 11 2 3
0
end_operator
begin_operator
move-forward-door-open l3 l4 d4 d5
1
8 0
4
0 2 -1 1
0 3 -1 1
0 9 -1 0
0 11 2 3
0
end_operator
begin_operator
move-forward-door-open l4 l5 d5 d6
0
5
0 3 -1 0
0 4 -1 0
0 9 0 1
0 10 -1 1
0 11 3 4
0
end_operator
begin_operator
move-forward-door-open l4 l5 d5 d6
0
5
0 3 -1 0
0 4 -1 1
0 9 0 1
0 10 -1 0
0 11 3 4
0
end_operator
begin_operator
move-forward-door-open l4 l5 d5 d6
1
9 0
4
0 3 -1 1
0 4 -1 0
0 10 -1 1
0 11 3 4
0
end_operator
begin_operator
move-forward-door-open l4 l5 d5 d6
1
9 0
4
0 3 -1 1
0 4 -1 1
0 10 -1 0
0 11 3 4
0
end_operator
begin_operator
move-forward-last-door-closed l5 l6 d6
2
4 0
5 0
2
0 10 -1 1
0 11 4 5
0
end_operator
begin_operator
move-forward-last-door-closed l5 l6 d6
1
5 0
3
0 4 0 1
0 10 -1 0
0 11 4 5
0
end_operator
begin_operator
move-forward-last-door-open l5 l6 d6
0
3
0 4 -1 0
0 10 0 1
0 11 4 5
0
end_operator
begin_operator
move-forward-last-door-open l5 l6 d6
1
10 0
2
0 4 -1 1
0 11 4 5
0
end_operator
begin_operator
pick-key l1
1
11 0
1
0 5 -1 0
0
end_operator
0
