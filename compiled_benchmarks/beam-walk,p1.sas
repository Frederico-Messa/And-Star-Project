begin_version
3
end_version
begin_metric
0
end_metric
2
begin_variable
var0
-1
4
Atom position(p0)
Atom position(p1)
Atom position(p2)
Atom position(p3)
end_variable
begin_variable
var1
-1
2
Atom up()
NegatedAtom up()
end_variable
1
begin_mutex_group
4
0 0
0 1
0 2
0 3
end_mutex_group
begin_state
0
1
end_state
begin_goal
2
0 3
1 0
end_goal
10
begin_operator
climb p0
1
0 0
1
0 1 1 0
0
end_operator
begin_operator
walk p1 p0
1
1 1
1
0 0 1 0
0
end_operator
begin_operator
walk p2 p1
1
1 1
1
0 0 2 1
0
end_operator
begin_operator
walk p3 p2
1
1 1
1
0 0 3 2
0
end_operator
begin_operator
walk-on-beam p0 p1
0
2
0 0 0 1
0 1 0 1
0
end_operator
begin_operator
walk-on-beam p0 p1
1
1 0
1
0 0 0 1
0
end_operator
begin_operator
walk-on-beam p1 p2
0
2
0 0 1 2
0 1 0 1
0
end_operator
begin_operator
walk-on-beam p1 p2
1
1 0
1
0 0 1 2
0
end_operator
begin_operator
walk-on-beam p2 p3
0
2
0 0 2 3
0 1 0 1
0
end_operator
begin_operator
walk-on-beam p2 p3
1
1 0
1
0 0 2 3
0
end_operator
0
