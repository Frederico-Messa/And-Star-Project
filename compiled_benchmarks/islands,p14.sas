begin_version
3
end_version
begin_metric
0
end_metric
4
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
19
Atom monkey-at(m1, l11-1)
Atom monkey-at(m1, l11-2)
Atom monkey-at(m1, l12-1)
Atom monkey-at(m1, l12-2)
Atom monkey-at(m1, l13-1)
Atom monkey-at(m1, l13-2)
Atom monkey-at(m1, l21-1)
Atom monkey-at(m1, l21-2)
Atom monkey-at(m1, l22-1)
Atom monkey-at(m1, l22-2)
Atom monkey-at(m1, l23-1)
Atom monkey-at(m1, l23-2)
Atom monkey-at(m1, l31-1)
Atom monkey-at(m1, l31-2)
Atom monkey-at(m1, l32-1)
Atom monkey-at(m1, l32-2)
Atom monkey-at(m1, l33-1)
Atom monkey-at(m1, l33-2)
Atom monkey-on-bridge(m1)
end_variable
begin_variable
var2
-1
2
Atom person-alive()
NegatedAtom person-alive()
end_variable
begin_variable
var3
-1
19
Atom person-at(l11-1)
Atom person-at(l11-2)
Atom person-at(l12-1)
Atom person-at(l12-2)
Atom person-at(l13-1)
Atom person-at(l13-2)
Atom person-at(l21-1)
Atom person-at(l21-2)
Atom person-at(l22-1)
Atom person-at(l22-2)
Atom person-at(l23-1)
Atom person-at(l23-2)
Atom person-at(l31-1)
Atom person-at(l31-2)
Atom person-at(l32-1)
Atom person-at(l32-2)
Atom person-at(l33-1)
Atom person-at(l33-2)
<none of those>
end_variable
4
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
2
0 0
1 18
end_mutex_group
begin_mutex_group
19
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
1 9
1 10
1 11
1 12
1 13
1 14
1 15
1 16
1 17
1 18
end_mutex_group
begin_mutex_group
18
3 0
3 1
3 2
3 3
3 4
3 5
3 6
3 7
3 8
3 9
3 10
3 11
3 12
3 13
3 14
3 15
3 16
3 17
end_mutex_group
begin_state
0
8
0
16
end_state
begin_goal
2
2 0
3 13
end_goal
134
begin_operator
climb-bridge m1 l11-1
0
2
0 0 0 1
0 1 0 18
0
end_operator
begin_operator
climb-bridge m1 l11-2
0
2
0 0 0 1
0 1 1 18
0
end_operator
begin_operator
climb-bridge m1 l12-1
0
2
0 0 0 1
0 1 2 18
0
end_operator
begin_operator
climb-bridge m1 l12-2
0
2
0 0 0 1
0 1 3 18
0
end_operator
begin_operator
climb-bridge m1 l13-1
0
2
0 0 0 1
0 1 4 18
0
end_operator
begin_operator
climb-bridge m1 l13-2
0
2
0 0 0 1
0 1 5 18
0
end_operator
begin_operator
climb-bridge m1 l21-1
0
2
0 0 0 1
0 1 6 18
0
end_operator
begin_operator
climb-bridge m1 l21-2
0
2
0 0 0 1
0 1 7 18
0
end_operator
begin_operator
climb-bridge m1 l22-1
0
2
0 0 0 1
0 1 8 18
0
end_operator
begin_operator
climb-bridge m1 l22-2
0
2
0 0 0 1
0 1 9 18
0
end_operator
begin_operator
climb-bridge m1 l23-1
0
2
0 0 0 1
0 1 10 18
0
end_operator
begin_operator
climb-bridge m1 l23-2
0
2
0 0 0 1
0 1 11 18
0
end_operator
begin_operator
climb-bridge m1 l31-1
0
2
0 0 0 1
0 1 12 18
0
end_operator
begin_operator
climb-bridge m1 l31-2
0
2
0 0 0 1
0 1 13 18
0
end_operator
begin_operator
climb-bridge m1 l32-1
0
2
0 0 0 1
0 1 14 18
0
end_operator
begin_operator
climb-bridge m1 l32-2
0
2
0 0 0 1
0 1 15 18
0
end_operator
begin_operator
climb-bridge m1 l33-1
0
2
0 0 0 1
0 1 16 18
0
end_operator
begin_operator
climb-bridge m1 l33-2
0
2
0 0 0 1
0 1 17 18
0
end_operator
begin_operator
leave-bridge m1 l11-1
0
2
0 0 1 0
0 1 18 0
0
end_operator
begin_operator
leave-bridge m1 l11-2
0
2
0 0 1 0
0 1 18 1
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
move-monkey l11-1 l21-1 m1
0
1
0 1 0 6
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
move-monkey l11-2 l21-2 m1
0
1
0 1 1 7
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
move-monkey l12-1 l13-1 m1
0
1
0 1 2 4
0
end_operator
begin_operator
move-monkey l12-1 l22-1 m1
0
1
0 1 2 8
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
move-monkey l12-2 l13-2 m1
0
1
0 1 3 5
0
end_operator
begin_operator
move-monkey l12-2 l22-2 m1
0
1
0 1 3 9
0
end_operator
begin_operator
move-monkey l13-1 l12-1 m1
0
1
0 1 4 2
0
end_operator
begin_operator
move-monkey l13-1 l23-1 m1
0
1
0 1 4 10
0
end_operator
begin_operator
move-monkey l13-2 l12-2 m1
0
1
0 1 5 3
0
end_operator
begin_operator
move-monkey l13-2 l23-2 m1
0
1
0 1 5 11
0
end_operator
begin_operator
move-monkey l21-1 l11-1 m1
0
1
0 1 6 0
0
end_operator
begin_operator
move-monkey l21-1 l22-1 m1
0
1
0 1 6 8
0
end_operator
begin_operator
move-monkey l21-1 l31-1 m1
0
1
0 1 6 12
0
end_operator
begin_operator
move-monkey l21-2 l11-2 m1
0
1
0 1 7 1
0
end_operator
begin_operator
move-monkey l21-2 l22-2 m1
0
1
0 1 7 9
0
end_operator
begin_operator
move-monkey l21-2 l31-2 m1
0
1
0 1 7 13
0
end_operator
begin_operator
move-monkey l22-1 l12-1 m1
0
1
0 1 8 2
0
end_operator
begin_operator
move-monkey l22-1 l21-1 m1
0
1
0 1 8 6
0
end_operator
begin_operator
move-monkey l22-1 l23-1 m1
0
1
0 1 8 10
0
end_operator
begin_operator
move-monkey l22-1 l32-1 m1
0
1
0 1 8 14
0
end_operator
begin_operator
move-monkey l22-2 l12-2 m1
0
1
0 1 9 3
0
end_operator
begin_operator
move-monkey l22-2 l21-2 m1
0
1
0 1 9 7
0
end_operator
begin_operator
move-monkey l22-2 l23-2 m1
0
1
0 1 9 11
0
end_operator
begin_operator
move-monkey l22-2 l32-2 m1
0
1
0 1 9 15
0
end_operator
begin_operator
move-monkey l23-1 l13-1 m1
0
1
0 1 10 4
0
end_operator
begin_operator
move-monkey l23-1 l22-1 m1
0
1
0 1 10 8
0
end_operator
begin_operator
move-monkey l23-1 l33-1 m1
0
1
0 1 10 16
0
end_operator
begin_operator
move-monkey l23-2 l13-2 m1
0
1
0 1 11 5
0
end_operator
begin_operator
move-monkey l23-2 l22-2 m1
0
1
0 1 11 9
0
end_operator
begin_operator
move-monkey l23-2 l33-2 m1
0
1
0 1 11 17
0
end_operator
begin_operator
move-monkey l31-1 l21-1 m1
0
1
0 1 12 6
0
end_operator
begin_operator
move-monkey l31-1 l32-1 m1
0
1
0 1 12 14
0
end_operator
begin_operator
move-monkey l31-2 l21-2 m1
0
1
0 1 13 7
0
end_operator
begin_operator
move-monkey l31-2 l32-2 m1
0
1
0 1 13 15
0
end_operator
begin_operator
move-monkey l32-1 l22-1 m1
0
1
0 1 14 8
0
end_operator
begin_operator
move-monkey l32-1 l31-1 m1
0
1
0 1 14 12
0
end_operator
begin_operator
move-monkey l32-1 l33-1 m1
0
1
0 1 14 16
0
end_operator
begin_operator
move-monkey l32-2 l22-2 m1
0
1
0 1 15 9
0
end_operator
begin_operator
move-monkey l32-2 l31-2 m1
0
1
0 1 15 13
0
end_operator
begin_operator
move-monkey l32-2 l33-2 m1
0
1
0 1 15 17
0
end_operator
begin_operator
move-monkey l33-1 l23-1 m1
0
1
0 1 16 10
0
end_operator
begin_operator
move-monkey l33-1 l32-1 m1
0
1
0 1 16 14
0
end_operator
begin_operator
move-monkey l33-2 l23-2 m1
0
1
0 1 17 11
0
end_operator
begin_operator
move-monkey l33-2 l32-2 m1
0
1
0 1 17 15
0
end_operator
begin_operator
move-person l11-1 l12-1
1
2 0
1
0 3 0 2
0
end_operator
begin_operator
move-person l11-1 l21-1
1
2 0
1
0 3 0 6
0
end_operator
begin_operator
move-person l11-2 l12-2
1
2 0
1
0 3 1 3
0
end_operator
begin_operator
move-person l11-2 l21-2
1
2 0
1
0 3 1 7
0
end_operator
begin_operator
move-person l12-1 l11-1
1
2 0
1
0 3 2 0
0
end_operator
begin_operator
move-person l12-1 l13-1
1
2 0
1
0 3 2 4
0
end_operator
begin_operator
move-person l12-1 l22-1
1
2 0
1
0 3 2 8
0
end_operator
begin_operator
move-person l12-2 l11-2
1
2 0
1
0 3 3 1
0
end_operator
begin_operator
move-person l12-2 l13-2
1
2 0
1
0 3 3 5
0
end_operator
begin_operator
move-person l12-2 l22-2
1
2 0
1
0 3 3 9
0
end_operator
begin_operator
move-person l13-1 l12-1
1
2 0
1
0 3 4 2
0
end_operator
begin_operator
move-person l13-1 l23-1
1
2 0
1
0 3 4 10
0
end_operator
begin_operator
move-person l13-2 l12-2
1
2 0
1
0 3 5 3
0
end_operator
begin_operator
move-person l13-2 l23-2
1
2 0
1
0 3 5 11
0
end_operator
begin_operator
move-person l21-1 l11-1
1
2 0
1
0 3 6 0
0
end_operator
begin_operator
move-person l21-1 l22-1
1
2 0
1
0 3 6 8
0
end_operator
begin_operator
move-person l21-1 l31-1
1
2 0
1
0 3 6 12
0
end_operator
begin_operator
move-person l21-2 l11-2
1
2 0
1
0 3 7 1
0
end_operator
begin_operator
move-person l21-2 l22-2
1
2 0
1
0 3 7 9
0
end_operator
begin_operator
move-person l21-2 l31-2
1
2 0
1
0 3 7 13
0
end_operator
begin_operator
move-person l22-1 l12-1
1
2 0
1
0 3 8 2
0
end_operator
begin_operator
move-person l22-1 l21-1
1
2 0
1
0 3 8 6
0
end_operator
begin_operator
move-person l22-1 l23-1
1
2 0
1
0 3 8 10
0
end_operator
begin_operator
move-person l22-1 l32-1
1
2 0
1
0 3 8 14
0
end_operator
begin_operator
move-person l22-2 l12-2
1
2 0
1
0 3 9 3
0
end_operator
begin_operator
move-person l22-2 l21-2
1
2 0
1
0 3 9 7
0
end_operator
begin_operator
move-person l22-2 l23-2
1
2 0
1
0 3 9 11
0
end_operator
begin_operator
move-person l22-2 l32-2
1
2 0
1
0 3 9 15
0
end_operator
begin_operator
move-person l23-1 l13-1
1
2 0
1
0 3 10 4
0
end_operator
begin_operator
move-person l23-1 l22-1
1
2 0
1
0 3 10 8
0
end_operator
begin_operator
move-person l23-1 l33-1
1
2 0
1
0 3 10 16
0
end_operator
begin_operator
move-person l23-2 l13-2
1
2 0
1
0 3 11 5
0
end_operator
begin_operator
move-person l23-2 l22-2
1
2 0
1
0 3 11 9
0
end_operator
begin_operator
move-person l23-2 l33-2
1
2 0
1
0 3 11 17
0
end_operator
begin_operator
move-person l31-1 l21-1
1
2 0
1
0 3 12 6
0
end_operator
begin_operator
move-person l31-1 l32-1
1
2 0
1
0 3 12 14
0
end_operator
begin_operator
move-person l31-2 l21-2
1
2 0
1
0 3 13 7
0
end_operator
begin_operator
move-person l31-2 l32-2
1
2 0
1
0 3 13 15
0
end_operator
begin_operator
move-person l32-1 l22-1
1
2 0
1
0 3 14 8
0
end_operator
begin_operator
move-person l32-1 l31-1
1
2 0
1
0 3 14 12
0
end_operator
begin_operator
move-person l32-1 l33-1
1
2 0
1
0 3 14 16
0
end_operator
begin_operator
move-person l32-2 l22-2
1
2 0
1
0 3 15 9
0
end_operator
begin_operator
move-person l32-2 l31-2
1
2 0
1
0 3 15 13
0
end_operator
begin_operator
move-person l32-2 l33-2
1
2 0
1
0 3 15 17
0
end_operator
begin_operator
move-person l33-1 l23-1
1
2 0
1
0 3 16 10
0
end_operator
begin_operator
move-person l33-1 l32-1
1
2 0
1
0 3 16 14
0
end_operator
begin_operator
move-person l33-2 l23-2
1
2 0
1
0 3 17 11
0
end_operator
begin_operator
move-person l33-2 l32-2
1
2 0
1
0 3 17 15
0
end_operator
begin_operator
swim l13-1 l31-2
0
2
0 2 0 1
0 3 4 18
0
end_operator
begin_operator
swim l13-1 l31-2
1
2 0
1
0 3 4 13
0
end_operator
begin_operator
swim l23-1 l31-2
0
2
0 2 0 1
0 3 10 18
0
end_operator
begin_operator
swim l23-1 l31-2
1
2 0
1
0 3 10 13
0
end_operator
begin_operator
swim l31-2 l13-1
0
2
0 2 0 1
0 3 13 18
0
end_operator
begin_operator
swim l31-2 l13-1
1
2 0
1
0 3 13 4
0
end_operator
begin_operator
swim l31-2 l23-1
0
2
0 2 0 1
0 3 13 18
0
end_operator
begin_operator
swim l31-2 l23-1
1
2 0
1
0 3 13 10
0
end_operator
begin_operator
swim l31-2 l33-1
0
2
0 2 0 1
0 3 13 18
0
end_operator
begin_operator
swim l31-2 l33-1
1
2 0
1
0 3 13 16
0
end_operator
begin_operator
swim l33-1 l31-2
0
2
0 2 0 1
0 3 16 18
0
end_operator
begin_operator
swim l33-1 l31-2
1
2 0
1
0 3 16 13
0
end_operator
begin_operator
walk-on-bridge l11-1 l13-2
2
0 0
2 0
1
0 3 0 5
0
end_operator
begin_operator
walk-on-bridge l13-2 l11-1
2
0 0
2 0
1
0 3 5 0
0
end_operator
begin_operator
walk-on-bridge l21-1 l23-2
2
0 0
2 0
1
0 3 6 11
0
end_operator
begin_operator
walk-on-bridge l23-2 l21-1
2
0 0
2 0
1
0 3 11 6
0
end_operator
begin_operator
walk-on-bridge l31-1 l33-2
2
0 0
2 0
1
0 3 12 17
0
end_operator
begin_operator
walk-on-bridge l33-2 l31-1
2
0 0
2 0
1
0 3 17 12
0
end_operator
0
