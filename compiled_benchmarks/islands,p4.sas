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
Atom bridge-clear()
Atom bridge-occupied()
end_variable
begin_variable
var1
-1
9
Atom monkey-at(m1, l11-1)
Atom monkey-at(m1, l11-2)
Atom monkey-at(m1, l12-1)
Atom monkey-at(m1, l12-2)
Atom monkey-at(m1, l21-1)
Atom monkey-at(m1, l21-2)
Atom monkey-at(m1, l22-1)
Atom monkey-at(m1, l22-2)
Atom monkey-on-bridge(m1)
end_variable
begin_variable
var2
-1
9
Atom monkey-at(m2, l11-1)
Atom monkey-at(m2, l11-2)
Atom monkey-at(m2, l12-1)
Atom monkey-at(m2, l12-2)
Atom monkey-at(m2, l21-1)
Atom monkey-at(m2, l21-2)
Atom monkey-at(m2, l22-1)
Atom monkey-at(m2, l22-2)
Atom monkey-on-bridge(m2)
end_variable
begin_variable
var3
-1
9
Atom monkey-at(m3, l11-1)
Atom monkey-at(m3, l11-2)
Atom monkey-at(m3, l12-1)
Atom monkey-at(m3, l12-2)
Atom monkey-at(m3, l21-1)
Atom monkey-at(m3, l21-2)
Atom monkey-at(m3, l22-1)
Atom monkey-at(m3, l22-2)
Atom monkey-on-bridge(m3)
end_variable
begin_variable
var4
-1
2
Atom person-alive()
NegatedAtom person-alive()
end_variable
begin_variable
var5
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
6
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
4
0 0
1 8
2 8
3 8
end_mutex_group
begin_mutex_group
9
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
end_mutex_group
begin_mutex_group
9
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
end_mutex_group
begin_mutex_group
9
3 0
3 1
3 2
3 3
3 4
3 5
3 6
3 7
3 8
end_mutex_group
begin_mutex_group
8
5 0
5 1
5 2
5 3
5 4
5 5
5 6
5 7
end_mutex_group
begin_state
0
3
3
1
0
6
end_state
begin_goal
2
4 0
5 5
end_goal
106
begin_operator
climb-bridge m1 l11-1
0
2
0 0 0 1
0 1 0 8
0
end_operator
begin_operator
climb-bridge m1 l11-2
0
2
0 0 0 1
0 1 1 8
0
end_operator
begin_operator
climb-bridge m1 l12-1
0
2
0 0 0 1
0 1 2 8
0
end_operator
begin_operator
climb-bridge m1 l12-2
0
2
0 0 0 1
0 1 3 8
0
end_operator
begin_operator
climb-bridge m1 l21-1
0
2
0 0 0 1
0 1 4 8
0
end_operator
begin_operator
climb-bridge m1 l21-2
0
2
0 0 0 1
0 1 5 8
0
end_operator
begin_operator
climb-bridge m1 l22-1
0
2
0 0 0 1
0 1 6 8
0
end_operator
begin_operator
climb-bridge m1 l22-2
0
2
0 0 0 1
0 1 7 8
0
end_operator
begin_operator
climb-bridge m2 l11-1
0
2
0 0 0 1
0 2 0 8
0
end_operator
begin_operator
climb-bridge m2 l11-2
0
2
0 0 0 1
0 2 1 8
0
end_operator
begin_operator
climb-bridge m2 l12-1
0
2
0 0 0 1
0 2 2 8
0
end_operator
begin_operator
climb-bridge m2 l12-2
0
2
0 0 0 1
0 2 3 8
0
end_operator
begin_operator
climb-bridge m2 l21-1
0
2
0 0 0 1
0 2 4 8
0
end_operator
begin_operator
climb-bridge m2 l21-2
0
2
0 0 0 1
0 2 5 8
0
end_operator
begin_operator
climb-bridge m2 l22-1
0
2
0 0 0 1
0 2 6 8
0
end_operator
begin_operator
climb-bridge m2 l22-2
0
2
0 0 0 1
0 2 7 8
0
end_operator
begin_operator
climb-bridge m3 l11-1
0
2
0 0 0 1
0 3 0 8
0
end_operator
begin_operator
climb-bridge m3 l11-2
0
2
0 0 0 1
0 3 1 8
0
end_operator
begin_operator
climb-bridge m3 l12-1
0
2
0 0 0 1
0 3 2 8
0
end_operator
begin_operator
climb-bridge m3 l12-2
0
2
0 0 0 1
0 3 3 8
0
end_operator
begin_operator
climb-bridge m3 l21-1
0
2
0 0 0 1
0 3 4 8
0
end_operator
begin_operator
climb-bridge m3 l21-2
0
2
0 0 0 1
0 3 5 8
0
end_operator
begin_operator
climb-bridge m3 l22-1
0
2
0 0 0 1
0 3 6 8
0
end_operator
begin_operator
climb-bridge m3 l22-2
0
2
0 0 0 1
0 3 7 8
0
end_operator
begin_operator
leave-bridge m1 l11-1
0
2
0 0 1 0
0 1 8 0
0
end_operator
begin_operator
leave-bridge m1 l11-2
0
2
0 0 1 0
0 1 8 1
0
end_operator
begin_operator
leave-bridge m2 l11-1
0
2
0 0 1 0
0 2 8 0
0
end_operator
begin_operator
leave-bridge m2 l11-2
0
2
0 0 1 0
0 2 8 1
0
end_operator
begin_operator
leave-bridge m3 l11-1
0
2
0 0 1 0
0 3 8 0
0
end_operator
begin_operator
leave-bridge m3 l11-2
0
2
0 0 1 0
0 3 8 1
0
end_operator
begin_operator
move-monkey l11-1 l12-1 m1
0
1
0 1 0 2
0
end_operator
begin_operator
move-monkey l11-1 l12-1 m2
0
1
0 2 0 2
0
end_operator
begin_operator
move-monkey l11-1 l12-1 m3
0
1
0 3 0 2
0
end_operator
begin_operator
move-monkey l11-1 l21-1 m1
0
1
0 1 0 4
0
end_operator
begin_operator
move-monkey l11-1 l21-1 m2
0
1
0 2 0 4
0
end_operator
begin_operator
move-monkey l11-1 l21-1 m3
0
1
0 3 0 4
0
end_operator
begin_operator
move-monkey l11-2 l12-2 m1
0
1
0 1 1 3
0
end_operator
begin_operator
move-monkey l11-2 l12-2 m2
0
1
0 2 1 3
0
end_operator
begin_operator
move-monkey l11-2 l12-2 m3
0
1
0 3 1 3
0
end_operator
begin_operator
move-monkey l11-2 l21-2 m1
0
1
0 1 1 5
0
end_operator
begin_operator
move-monkey l11-2 l21-2 m2
0
1
0 2 1 5
0
end_operator
begin_operator
move-monkey l11-2 l21-2 m3
0
1
0 3 1 5
0
end_operator
begin_operator
move-monkey l12-1 l11-1 m1
0
1
0 1 2 0
0
end_operator
begin_operator
move-monkey l12-1 l11-1 m2
0
1
0 2 2 0
0
end_operator
begin_operator
move-monkey l12-1 l11-1 m3
0
1
0 3 2 0
0
end_operator
begin_operator
move-monkey l12-1 l22-1 m1
0
1
0 1 2 6
0
end_operator
begin_operator
move-monkey l12-1 l22-1 m2
0
1
0 2 2 6
0
end_operator
begin_operator
move-monkey l12-1 l22-1 m3
0
1
0 3 2 6
0
end_operator
begin_operator
move-monkey l12-2 l11-2 m1
0
1
0 1 3 1
0
end_operator
begin_operator
move-monkey l12-2 l11-2 m2
0
1
0 2 3 1
0
end_operator
begin_operator
move-monkey l12-2 l11-2 m3
0
1
0 3 3 1
0
end_operator
begin_operator
move-monkey l12-2 l22-2 m1
0
1
0 1 3 7
0
end_operator
begin_operator
move-monkey l12-2 l22-2 m2
0
1
0 2 3 7
0
end_operator
begin_operator
move-monkey l12-2 l22-2 m3
0
1
0 3 3 7
0
end_operator
begin_operator
move-monkey l21-1 l11-1 m1
0
1
0 1 4 0
0
end_operator
begin_operator
move-monkey l21-1 l11-1 m2
0
1
0 2 4 0
0
end_operator
begin_operator
move-monkey l21-1 l11-1 m3
0
1
0 3 4 0
0
end_operator
begin_operator
move-monkey l21-1 l22-1 m1
0
1
0 1 4 6
0
end_operator
begin_operator
move-monkey l21-1 l22-1 m2
0
1
0 2 4 6
0
end_operator
begin_operator
move-monkey l21-1 l22-1 m3
0
1
0 3 4 6
0
end_operator
begin_operator
move-monkey l21-2 l11-2 m1
0
1
0 1 5 1
0
end_operator
begin_operator
move-monkey l21-2 l11-2 m2
0
1
0 2 5 1
0
end_operator
begin_operator
move-monkey l21-2 l11-2 m3
0
1
0 3 5 1
0
end_operator
begin_operator
move-monkey l21-2 l22-2 m1
0
1
0 1 5 7
0
end_operator
begin_operator
move-monkey l21-2 l22-2 m2
0
1
0 2 5 7
0
end_operator
begin_operator
move-monkey l21-2 l22-2 m3
0
1
0 3 5 7
0
end_operator
begin_operator
move-monkey l22-1 l12-1 m1
0
1
0 1 6 2
0
end_operator
begin_operator
move-monkey l22-1 l12-1 m2
0
1
0 2 6 2
0
end_operator
begin_operator
move-monkey l22-1 l12-1 m3
0
1
0 3 6 2
0
end_operator
begin_operator
move-monkey l22-1 l21-1 m1
0
1
0 1 6 4
0
end_operator
begin_operator
move-monkey l22-1 l21-1 m2
0
1
0 2 6 4
0
end_operator
begin_operator
move-monkey l22-1 l21-1 m3
0
1
0 3 6 4
0
end_operator
begin_operator
move-monkey l22-2 l12-2 m1
0
1
0 1 7 3
0
end_operator
begin_operator
move-monkey l22-2 l12-2 m2
0
1
0 2 7 3
0
end_operator
begin_operator
move-monkey l22-2 l12-2 m3
0
1
0 3 7 3
0
end_operator
begin_operator
move-monkey l22-2 l21-2 m1
0
1
0 1 7 5
0
end_operator
begin_operator
move-monkey l22-2 l21-2 m2
0
1
0 2 7 5
0
end_operator
begin_operator
move-monkey l22-2 l21-2 m3
0
1
0 3 7 5
0
end_operator
begin_operator
move-person l11-1 l12-1
1
4 0
1
0 5 0 2
0
end_operator
begin_operator
move-person l11-1 l21-1
1
4 0
1
0 5 0 4
0
end_operator
begin_operator
move-person l11-2 l12-2
1
4 0
1
0 5 1 3
0
end_operator
begin_operator
move-person l11-2 l21-2
1
4 0
1
0 5 1 5
0
end_operator
begin_operator
move-person l12-1 l11-1
1
4 0
1
0 5 2 0
0
end_operator
begin_operator
move-person l12-1 l22-1
1
4 0
1
0 5 2 6
0
end_operator
begin_operator
move-person l12-2 l11-2
1
4 0
1
0 5 3 1
0
end_operator
begin_operator
move-person l12-2 l22-2
1
4 0
1
0 5 3 7
0
end_operator
begin_operator
move-person l21-1 l11-1
1
4 0
1
0 5 4 0
0
end_operator
begin_operator
move-person l21-1 l22-1
1
4 0
1
0 5 4 6
0
end_operator
begin_operator
move-person l21-2 l11-2
1
4 0
1
0 5 5 1
0
end_operator
begin_operator
move-person l21-2 l22-2
1
4 0
1
0 5 5 7
0
end_operator
begin_operator
move-person l22-1 l12-1
1
4 0
1
0 5 6 2
0
end_operator
begin_operator
move-person l22-1 l21-1
1
4 0
1
0 5 6 4
0
end_operator
begin_operator
move-person l22-2 l12-2
1
4 0
1
0 5 7 3
0
end_operator
begin_operator
move-person l22-2 l21-2
1
4 0
1
0 5 7 5
0
end_operator
begin_operator
swim l12-1 l21-2
0
2
0 4 0 1
0 5 2 8
0
end_operator
begin_operator
swim l12-1 l21-2
1
4 0
1
0 5 2 5
0
end_operator
begin_operator
swim l21-2 l12-1
0
2
0 4 0 1
0 5 5 8
0
end_operator
begin_operator
swim l21-2 l12-1
1
4 0
1
0 5 5 2
0
end_operator
begin_operator
swim l21-2 l22-1
0
2
0 4 0 1
0 5 5 8
0
end_operator
begin_operator
swim l21-2 l22-1
1
4 0
1
0 5 5 6
0
end_operator
begin_operator
swim l22-1 l21-2
0
2
0 4 0 1
0 5 6 8
0
end_operator
begin_operator
swim l22-1 l21-2
1
4 0
1
0 5 6 5
0
end_operator
begin_operator
walk-on-bridge l11-1 l12-2
2
0 0
4 0
1
0 5 0 3
0
end_operator
begin_operator
walk-on-bridge l12-2 l11-1
2
0 0
4 0
1
0 5 3 0
0
end_operator
begin_operator
walk-on-bridge l21-1 l22-2
2
0 0
4 0
1
0 5 4 7
0
end_operator
begin_operator
walk-on-bridge l22-2 l21-1
2
0 0
4 0
1
0 5 7 4
0
end_operator
0
