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
2
Atom person-alive()
NegatedAtom person-alive()
end_variable
begin_variable
var1
-1
9
Atom person-at(l11-1)
Atom person-at(l11-2)
Atom person-at(l12-1)
Atom person-at(l12-2)
Atom person-at(l21-1)
Atom person-at(l21-2)
Atom person-at(l22-1)
Atom person-at(l22-2)
<none of those>
end_variable
1
begin_mutex_group
8
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
end_mutex_group
begin_state
0
6
end_state
begin_goal
2
0 0
1 5
end_goal
28
begin_operator
move-person l11-1 l12-1
1
0 0
1
0 1 0 2
0
end_operator
begin_operator
move-person l11-1 l21-1
1
0 0
1
0 1 0 4
0
end_operator
begin_operator
move-person l11-2 l12-2
1
0 0
1
0 1 1 3
0
end_operator
begin_operator
move-person l11-2 l21-2
1
0 0
1
0 1 1 5
0
end_operator
begin_operator
move-person l12-1 l11-1
1
0 0
1
0 1 2 0
0
end_operator
begin_operator
move-person l12-1 l22-1
1
0 0
1
0 1 2 6
0
end_operator
begin_operator
move-person l12-2 l11-2
1
0 0
1
0 1 3 1
0
end_operator
begin_operator
move-person l12-2 l22-2
1
0 0
1
0 1 3 7
0
end_operator
begin_operator
move-person l21-1 l11-1
1
0 0
1
0 1 4 0
0
end_operator
begin_operator
move-person l21-1 l22-1
1
0 0
1
0 1 4 6
0
end_operator
begin_operator
move-person l21-2 l11-2
1
0 0
1
0 1 5 1
0
end_operator
begin_operator
move-person l21-2 l22-2
1
0 0
1
0 1 5 7
0
end_operator
begin_operator
move-person l22-1 l12-1
1
0 0
1
0 1 6 2
0
end_operator
begin_operator
move-person l22-1 l21-1
1
0 0
1
0 1 6 4
0
end_operator
begin_operator
move-person l22-2 l12-2
1
0 0
1
0 1 7 3
0
end_operator
begin_operator
move-person l22-2 l21-2
1
0 0
1
0 1 7 5
0
end_operator
begin_operator
swim l12-1 l21-2
0
2
0 0 0 1
0 1 2 8
0
end_operator
begin_operator
swim l12-1 l21-2
1
0 0
1
0 1 2 5
0
end_operator
begin_operator
swim l21-2 l12-1
0
2
0 0 0 1
0 1 5 8
0
end_operator
begin_operator
swim l21-2 l12-1
1
0 0
1
0 1 5 2
0
end_operator
begin_operator
swim l21-2 l22-1
0
2
0 0 0 1
0 1 5 8
0
end_operator
begin_operator
swim l21-2 l22-1
1
0 0
1
0 1 5 6
0
end_operator
begin_operator
swim l22-1 l21-2
0
2
0 0 0 1
0 1 6 8
0
end_operator
begin_operator
swim l22-1 l21-2
1
0 0
1
0 1 6 5
0
end_operator
begin_operator
walk-on-bridge l11-1 l12-2
1
0 0
1
0 1 0 3
0
end_operator
begin_operator
walk-on-bridge l12-2 l11-1
1
0 0
1
0 1 3 0
0
end_operator
begin_operator
walk-on-bridge l21-1 l22-2
1
0 0
1
0 1 4 7
0
end_operator
begin_operator
walk-on-bridge l22-2 l21-1
1
0 0
1
0 1 7 4
0
end_operator
0
