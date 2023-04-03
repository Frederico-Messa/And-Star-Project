begin_version
3
end_version
begin_metric
0
end_metric
3
begin_variable
var0
-1
2
Atom broken-leg()
NegatedAtom broken-leg()
end_variable
begin_variable
var1
-1
4
Atom position(p0)
Atom position(p1)
Atom position(p2)
Atom position(p3)
end_variable
begin_variable
var2
-1
2
Atom up()
NegatedAtom up()
end_variable
1
begin_mutex_group
4
1 0
1 1
1 2
1 3
end_mutex_group
begin_state
1
0
1
end_state
begin_goal
2
1 3
2 0
end_goal
26
begin_operator
climb p0
2
0 1
1 0
1
0 2 1 0
0
end_operator
begin_operator
climb-down 
1
0 1
1
0 2 0 1
0
end_operator
begin_operator
jump-over p0 p1 p2
0
3
0 0 1 0
0 1 0 1
0 2 0 1
0
end_operator
begin_operator
jump-over p0 p1 p2
0
3
0 0 1 0
0 1 0 2
0 2 0 1
0
end_operator
begin_operator
jump-over p0 p1 p2
1
0 1
2
0 1 0 1
0 2 0 1
0
end_operator
begin_operator
jump-over p0 p1 p2
1
0 1
2
0 1 0 2
0 2 0 1
0
end_operator
begin_operator
jump-over p0 p1 p2
2
0 1
2 0
1
0 1 0 2
0
end_operator
begin_operator
jump-over p0 p1 p2
1
1 0
2
0 0 1 0
0 2 0 1
0
end_operator
begin_operator
jump-over p1 p2 p3
0
3
0 0 1 0
0 1 1 2
0 2 0 1
0
end_operator
begin_operator
jump-over p1 p2 p3
0
3
0 0 1 0
0 1 1 3
0 2 0 1
0
end_operator
begin_operator
jump-over p1 p2 p3
1
0 1
2
0 1 1 2
0 2 0 1
0
end_operator
begin_operator
jump-over p1 p2 p3
1
0 1
2
0 1 1 3
0 2 0 1
0
end_operator
begin_operator
jump-over p1 p2 p3
2
0 1
2 0
1
0 1 1 3
0
end_operator
begin_operator
jump-over p1 p2 p3
1
1 1
2
0 0 1 0
0 2 0 1
0
end_operator
begin_operator
walk-left p1 p0
2
0 1
2 1
1
0 1 1 0
0
end_operator
begin_operator
walk-left p2 p1
2
0 1
2 1
1
0 1 2 1
0
end_operator
begin_operator
walk-left p3 p2
2
0 1
2 1
1
0 1 3 2
0
end_operator
begin_operator
walk-on-beam p0 p1
1
0 1
2
0 1 0 1
0 2 0 1
0
end_operator
begin_operator
walk-on-beam p0 p1
2
0 1
2 0
1
0 1 0 1
0
end_operator
begin_operator
walk-on-beam p1 p2
1
0 1
2
0 1 1 2
0 2 0 1
0
end_operator
begin_operator
walk-on-beam p1 p2
2
0 1
2 0
1
0 1 1 2
0
end_operator
begin_operator
walk-on-beam p2 p3
1
0 1
2
0 1 2 3
0 2 0 1
0
end_operator
begin_operator
walk-on-beam p2 p3
2
0 1
2 0
1
0 1 2 3
0
end_operator
begin_operator
walk-right p0 p1
2
0 1
2 1
1
0 1 0 1
0
end_operator
begin_operator
walk-right p1 p2
2
0 1
2 1
1
0 1 1 2
0
end_operator
begin_operator
walk-right p2 p3
2
0 1
2 1
1
0 1 2 3
0
end_operator
0
