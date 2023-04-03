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
51
Atom monkey-at(m1, l11-1)
Atom monkey-at(m1, l11-2)
Atom monkey-at(m1, l12-1)
Atom monkey-at(m1, l12-2)
Atom monkey-at(m1, l13-1)
Atom monkey-at(m1, l13-2)
Atom monkey-at(m1, l14-1)
Atom monkey-at(m1, l14-2)
Atom monkey-at(m1, l15-1)
Atom monkey-at(m1, l15-2)
Atom monkey-at(m1, l21-1)
Atom monkey-at(m1, l21-2)
Atom monkey-at(m1, l22-1)
Atom monkey-at(m1, l22-2)
Atom monkey-at(m1, l23-1)
Atom monkey-at(m1, l23-2)
Atom monkey-at(m1, l24-1)
Atom monkey-at(m1, l24-2)
Atom monkey-at(m1, l25-1)
Atom monkey-at(m1, l25-2)
Atom monkey-at(m1, l31-1)
Atom monkey-at(m1, l31-2)
Atom monkey-at(m1, l32-1)
Atom monkey-at(m1, l32-2)
Atom monkey-at(m1, l33-1)
Atom monkey-at(m1, l33-2)
Atom monkey-at(m1, l34-1)
Atom monkey-at(m1, l34-2)
Atom monkey-at(m1, l35-1)
Atom monkey-at(m1, l35-2)
Atom monkey-at(m1, l41-1)
Atom monkey-at(m1, l41-2)
Atom monkey-at(m1, l42-1)
Atom monkey-at(m1, l42-2)
Atom monkey-at(m1, l43-1)
Atom monkey-at(m1, l43-2)
Atom monkey-at(m1, l44-1)
Atom monkey-at(m1, l44-2)
Atom monkey-at(m1, l45-1)
Atom monkey-at(m1, l45-2)
Atom monkey-at(m1, l51-1)
Atom monkey-at(m1, l51-2)
Atom monkey-at(m1, l52-1)
Atom monkey-at(m1, l52-2)
Atom monkey-at(m1, l53-1)
Atom monkey-at(m1, l53-2)
Atom monkey-at(m1, l54-1)
Atom monkey-at(m1, l54-2)
Atom monkey-at(m1, l55-1)
Atom monkey-at(m1, l55-2)
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
51
Atom person-at(l11-1)
Atom person-at(l11-2)
Atom person-at(l12-1)
Atom person-at(l12-2)
Atom person-at(l13-1)
Atom person-at(l13-2)
Atom person-at(l14-1)
Atom person-at(l14-2)
Atom person-at(l15-1)
Atom person-at(l15-2)
Atom person-at(l21-1)
Atom person-at(l21-2)
Atom person-at(l22-1)
Atom person-at(l22-2)
Atom person-at(l23-1)
Atom person-at(l23-2)
Atom person-at(l24-1)
Atom person-at(l24-2)
Atom person-at(l25-1)
Atom person-at(l25-2)
Atom person-at(l31-1)
Atom person-at(l31-2)
Atom person-at(l32-1)
Atom person-at(l32-2)
Atom person-at(l33-1)
Atom person-at(l33-2)
Atom person-at(l34-1)
Atom person-at(l34-2)
Atom person-at(l35-1)
Atom person-at(l35-2)
Atom person-at(l41-1)
Atom person-at(l41-2)
Atom person-at(l42-1)
Atom person-at(l42-2)
Atom person-at(l43-1)
Atom person-at(l43-2)
Atom person-at(l44-1)
Atom person-at(l44-2)
Atom person-at(l45-1)
Atom person-at(l45-2)
Atom person-at(l51-1)
Atom person-at(l51-2)
Atom person-at(l52-1)
Atom person-at(l52-2)
Atom person-at(l53-1)
Atom person-at(l53-2)
Atom person-at(l54-1)
Atom person-at(l54-2)
Atom person-at(l55-1)
Atom person-at(l55-2)
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
1 50
end_mutex_group
begin_mutex_group
51
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
1 19
1 20
1 21
1 22
1 23
1 24
1 25
1 26
1 27
1 28
1 29
1 30
1 31
1 32
1 33
1 34
1 35
1 36
1 37
1 38
1 39
1 40
1 41
1 42
1 43
1 44
1 45
1 46
1 47
1 48
1 49
1 50
end_mutex_group
begin_mutex_group
50
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
3 18
3 19
3 20
3 21
3 22
3 23
3 24
3 25
3 26
3 27
3 28
3 29
3 30
3 31
3 32
3 33
3 34
3 35
3 36
3 37
3 38
3 39
3 40
3 41
3 42
3 43
3 44
3 45
3 46
3 47
3 48
3 49
end_mutex_group
begin_state
0
24
0
48
end_state
begin_goal
2
2 0
3 41
end_goal
402
begin_operator
climb-bridge m1 l11-1
0
2
0 0 0 1
0 1 0 50
0
end_operator
begin_operator
climb-bridge m1 l11-2
0
2
0 0 0 1
0 1 1 50
0
end_operator
begin_operator
climb-bridge m1 l12-1
0
2
0 0 0 1
0 1 2 50
0
end_operator
begin_operator
climb-bridge m1 l12-2
0
2
0 0 0 1
0 1 3 50
0
end_operator
begin_operator
climb-bridge m1 l13-1
0
2
0 0 0 1
0 1 4 50
0
end_operator
begin_operator
climb-bridge m1 l13-2
0
2
0 0 0 1
0 1 5 50
0
end_operator
begin_operator
climb-bridge m1 l14-1
0
2
0 0 0 1
0 1 6 50
0
end_operator
begin_operator
climb-bridge m1 l14-2
0
2
0 0 0 1
0 1 7 50
0
end_operator
begin_operator
climb-bridge m1 l15-1
0
2
0 0 0 1
0 1 8 50
0
end_operator
begin_operator
climb-bridge m1 l15-2
0
2
0 0 0 1
0 1 9 50
0
end_operator
begin_operator
climb-bridge m1 l21-1
0
2
0 0 0 1
0 1 10 50
0
end_operator
begin_operator
climb-bridge m1 l21-2
0
2
0 0 0 1
0 1 11 50
0
end_operator
begin_operator
climb-bridge m1 l22-1
0
2
0 0 0 1
0 1 12 50
0
end_operator
begin_operator
climb-bridge m1 l22-2
0
2
0 0 0 1
0 1 13 50
0
end_operator
begin_operator
climb-bridge m1 l23-1
0
2
0 0 0 1
0 1 14 50
0
end_operator
begin_operator
climb-bridge m1 l23-2
0
2
0 0 0 1
0 1 15 50
0
end_operator
begin_operator
climb-bridge m1 l24-1
0
2
0 0 0 1
0 1 16 50
0
end_operator
begin_operator
climb-bridge m1 l24-2
0
2
0 0 0 1
0 1 17 50
0
end_operator
begin_operator
climb-bridge m1 l25-1
0
2
0 0 0 1
0 1 18 50
0
end_operator
begin_operator
climb-bridge m1 l25-2
0
2
0 0 0 1
0 1 19 50
0
end_operator
begin_operator
climb-bridge m1 l31-1
0
2
0 0 0 1
0 1 20 50
0
end_operator
begin_operator
climb-bridge m1 l31-2
0
2
0 0 0 1
0 1 21 50
0
end_operator
begin_operator
climb-bridge m1 l32-1
0
2
0 0 0 1
0 1 22 50
0
end_operator
begin_operator
climb-bridge m1 l32-2
0
2
0 0 0 1
0 1 23 50
0
end_operator
begin_operator
climb-bridge m1 l33-1
0
2
0 0 0 1
0 1 24 50
0
end_operator
begin_operator
climb-bridge m1 l33-2
0
2
0 0 0 1
0 1 25 50
0
end_operator
begin_operator
climb-bridge m1 l34-1
0
2
0 0 0 1
0 1 26 50
0
end_operator
begin_operator
climb-bridge m1 l34-2
0
2
0 0 0 1
0 1 27 50
0
end_operator
begin_operator
climb-bridge m1 l35-1
0
2
0 0 0 1
0 1 28 50
0
end_operator
begin_operator
climb-bridge m1 l35-2
0
2
0 0 0 1
0 1 29 50
0
end_operator
begin_operator
climb-bridge m1 l41-1
0
2
0 0 0 1
0 1 30 50
0
end_operator
begin_operator
climb-bridge m1 l41-2
0
2
0 0 0 1
0 1 31 50
0
end_operator
begin_operator
climb-bridge m1 l42-1
0
2
0 0 0 1
0 1 32 50
0
end_operator
begin_operator
climb-bridge m1 l42-2
0
2
0 0 0 1
0 1 33 50
0
end_operator
begin_operator
climb-bridge m1 l43-1
0
2
0 0 0 1
0 1 34 50
0
end_operator
begin_operator
climb-bridge m1 l43-2
0
2
0 0 0 1
0 1 35 50
0
end_operator
begin_operator
climb-bridge m1 l44-1
0
2
0 0 0 1
0 1 36 50
0
end_operator
begin_operator
climb-bridge m1 l44-2
0
2
0 0 0 1
0 1 37 50
0
end_operator
begin_operator
climb-bridge m1 l45-1
0
2
0 0 0 1
0 1 38 50
0
end_operator
begin_operator
climb-bridge m1 l45-2
0
2
0 0 0 1
0 1 39 50
0
end_operator
begin_operator
climb-bridge m1 l51-1
0
2
0 0 0 1
0 1 40 50
0
end_operator
begin_operator
climb-bridge m1 l51-2
0
2
0 0 0 1
0 1 41 50
0
end_operator
begin_operator
climb-bridge m1 l52-1
0
2
0 0 0 1
0 1 42 50
0
end_operator
begin_operator
climb-bridge m1 l52-2
0
2
0 0 0 1
0 1 43 50
0
end_operator
begin_operator
climb-bridge m1 l53-1
0
2
0 0 0 1
0 1 44 50
0
end_operator
begin_operator
climb-bridge m1 l53-2
0
2
0 0 0 1
0 1 45 50
0
end_operator
begin_operator
climb-bridge m1 l54-1
0
2
0 0 0 1
0 1 46 50
0
end_operator
begin_operator
climb-bridge m1 l54-2
0
2
0 0 0 1
0 1 47 50
0
end_operator
begin_operator
climb-bridge m1 l55-1
0
2
0 0 0 1
0 1 48 50
0
end_operator
begin_operator
climb-bridge m1 l55-2
0
2
0 0 0 1
0 1 49 50
0
end_operator
begin_operator
leave-bridge m1 l11-1
0
2
0 0 1 0
0 1 50 0
0
end_operator
begin_operator
leave-bridge m1 l11-2
0
2
0 0 1 0
0 1 50 1
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
0 1 0 10
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
0 1 1 11
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
0 1 2 12
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
0 1 3 13
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
move-monkey l13-1 l14-1 m1
0
1
0 1 4 6
0
end_operator
begin_operator
move-monkey l13-1 l23-1 m1
0
1
0 1 4 14
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
move-monkey l13-2 l14-2 m1
0
1
0 1 5 7
0
end_operator
begin_operator
move-monkey l13-2 l23-2 m1
0
1
0 1 5 15
0
end_operator
begin_operator
move-monkey l14-1 l13-1 m1
0
1
0 1 6 4
0
end_operator
begin_operator
move-monkey l14-1 l15-1 m1
0
1
0 1 6 8
0
end_operator
begin_operator
move-monkey l14-1 l24-1 m1
0
1
0 1 6 16
0
end_operator
begin_operator
move-monkey l14-2 l13-2 m1
0
1
0 1 7 5
0
end_operator
begin_operator
move-monkey l14-2 l15-2 m1
0
1
0 1 7 9
0
end_operator
begin_operator
move-monkey l14-2 l24-2 m1
0
1
0 1 7 17
0
end_operator
begin_operator
move-monkey l15-1 l14-1 m1
0
1
0 1 8 6
0
end_operator
begin_operator
move-monkey l15-1 l25-1 m1
0
1
0 1 8 18
0
end_operator
begin_operator
move-monkey l15-2 l14-2 m1
0
1
0 1 9 7
0
end_operator
begin_operator
move-monkey l15-2 l25-2 m1
0
1
0 1 9 19
0
end_operator
begin_operator
move-monkey l21-1 l11-1 m1
0
1
0 1 10 0
0
end_operator
begin_operator
move-monkey l21-1 l22-1 m1
0
1
0 1 10 12
0
end_operator
begin_operator
move-monkey l21-1 l31-1 m1
0
1
0 1 10 20
0
end_operator
begin_operator
move-monkey l21-2 l11-2 m1
0
1
0 1 11 1
0
end_operator
begin_operator
move-monkey l21-2 l22-2 m1
0
1
0 1 11 13
0
end_operator
begin_operator
move-monkey l21-2 l31-2 m1
0
1
0 1 11 21
0
end_operator
begin_operator
move-monkey l22-1 l12-1 m1
0
1
0 1 12 2
0
end_operator
begin_operator
move-monkey l22-1 l21-1 m1
0
1
0 1 12 10
0
end_operator
begin_operator
move-monkey l22-1 l23-1 m1
0
1
0 1 12 14
0
end_operator
begin_operator
move-monkey l22-1 l32-1 m1
0
1
0 1 12 22
0
end_operator
begin_operator
move-monkey l22-2 l12-2 m1
0
1
0 1 13 3
0
end_operator
begin_operator
move-monkey l22-2 l21-2 m1
0
1
0 1 13 11
0
end_operator
begin_operator
move-monkey l22-2 l23-2 m1
0
1
0 1 13 15
0
end_operator
begin_operator
move-monkey l22-2 l32-2 m1
0
1
0 1 13 23
0
end_operator
begin_operator
move-monkey l23-1 l13-1 m1
0
1
0 1 14 4
0
end_operator
begin_operator
move-monkey l23-1 l22-1 m1
0
1
0 1 14 12
0
end_operator
begin_operator
move-monkey l23-1 l24-1 m1
0
1
0 1 14 16
0
end_operator
begin_operator
move-monkey l23-1 l33-1 m1
0
1
0 1 14 24
0
end_operator
begin_operator
move-monkey l23-2 l13-2 m1
0
1
0 1 15 5
0
end_operator
begin_operator
move-monkey l23-2 l22-2 m1
0
1
0 1 15 13
0
end_operator
begin_operator
move-monkey l23-2 l24-2 m1
0
1
0 1 15 17
0
end_operator
begin_operator
move-monkey l23-2 l33-2 m1
0
1
0 1 15 25
0
end_operator
begin_operator
move-monkey l24-1 l14-1 m1
0
1
0 1 16 6
0
end_operator
begin_operator
move-monkey l24-1 l23-1 m1
0
1
0 1 16 14
0
end_operator
begin_operator
move-monkey l24-1 l25-1 m1
0
1
0 1 16 18
0
end_operator
begin_operator
move-monkey l24-1 l34-1 m1
0
1
0 1 16 26
0
end_operator
begin_operator
move-monkey l24-2 l14-2 m1
0
1
0 1 17 7
0
end_operator
begin_operator
move-monkey l24-2 l23-2 m1
0
1
0 1 17 15
0
end_operator
begin_operator
move-monkey l24-2 l25-2 m1
0
1
0 1 17 19
0
end_operator
begin_operator
move-monkey l24-2 l34-2 m1
0
1
0 1 17 27
0
end_operator
begin_operator
move-monkey l25-1 l15-1 m1
0
1
0 1 18 8
0
end_operator
begin_operator
move-monkey l25-1 l24-1 m1
0
1
0 1 18 16
0
end_operator
begin_operator
move-monkey l25-1 l35-1 m1
0
1
0 1 18 28
0
end_operator
begin_operator
move-monkey l25-2 l15-2 m1
0
1
0 1 19 9
0
end_operator
begin_operator
move-monkey l25-2 l24-2 m1
0
1
0 1 19 17
0
end_operator
begin_operator
move-monkey l25-2 l35-2 m1
0
1
0 1 19 29
0
end_operator
begin_operator
move-monkey l31-1 l21-1 m1
0
1
0 1 20 10
0
end_operator
begin_operator
move-monkey l31-1 l32-1 m1
0
1
0 1 20 22
0
end_operator
begin_operator
move-monkey l31-1 l41-1 m1
0
1
0 1 20 30
0
end_operator
begin_operator
move-monkey l31-2 l21-2 m1
0
1
0 1 21 11
0
end_operator
begin_operator
move-monkey l31-2 l32-2 m1
0
1
0 1 21 23
0
end_operator
begin_operator
move-monkey l31-2 l41-2 m1
0
1
0 1 21 31
0
end_operator
begin_operator
move-monkey l32-1 l22-1 m1
0
1
0 1 22 12
0
end_operator
begin_operator
move-monkey l32-1 l31-1 m1
0
1
0 1 22 20
0
end_operator
begin_operator
move-monkey l32-1 l33-1 m1
0
1
0 1 22 24
0
end_operator
begin_operator
move-monkey l32-1 l42-1 m1
0
1
0 1 22 32
0
end_operator
begin_operator
move-monkey l32-2 l22-2 m1
0
1
0 1 23 13
0
end_operator
begin_operator
move-monkey l32-2 l31-2 m1
0
1
0 1 23 21
0
end_operator
begin_operator
move-monkey l32-2 l33-2 m1
0
1
0 1 23 25
0
end_operator
begin_operator
move-monkey l32-2 l42-2 m1
0
1
0 1 23 33
0
end_operator
begin_operator
move-monkey l33-1 l23-1 m1
0
1
0 1 24 14
0
end_operator
begin_operator
move-monkey l33-1 l32-1 m1
0
1
0 1 24 22
0
end_operator
begin_operator
move-monkey l33-1 l34-1 m1
0
1
0 1 24 26
0
end_operator
begin_operator
move-monkey l33-1 l43-1 m1
0
1
0 1 24 34
0
end_operator
begin_operator
move-monkey l33-2 l23-2 m1
0
1
0 1 25 15
0
end_operator
begin_operator
move-monkey l33-2 l32-2 m1
0
1
0 1 25 23
0
end_operator
begin_operator
move-monkey l33-2 l34-2 m1
0
1
0 1 25 27
0
end_operator
begin_operator
move-monkey l33-2 l43-2 m1
0
1
0 1 25 35
0
end_operator
begin_operator
move-monkey l34-1 l24-1 m1
0
1
0 1 26 16
0
end_operator
begin_operator
move-monkey l34-1 l33-1 m1
0
1
0 1 26 24
0
end_operator
begin_operator
move-monkey l34-1 l35-1 m1
0
1
0 1 26 28
0
end_operator
begin_operator
move-monkey l34-1 l44-1 m1
0
1
0 1 26 36
0
end_operator
begin_operator
move-monkey l34-2 l24-2 m1
0
1
0 1 27 17
0
end_operator
begin_operator
move-monkey l34-2 l33-2 m1
0
1
0 1 27 25
0
end_operator
begin_operator
move-monkey l34-2 l35-2 m1
0
1
0 1 27 29
0
end_operator
begin_operator
move-monkey l34-2 l44-2 m1
0
1
0 1 27 37
0
end_operator
begin_operator
move-monkey l35-1 l25-1 m1
0
1
0 1 28 18
0
end_operator
begin_operator
move-monkey l35-1 l34-1 m1
0
1
0 1 28 26
0
end_operator
begin_operator
move-monkey l35-1 l45-1 m1
0
1
0 1 28 38
0
end_operator
begin_operator
move-monkey l35-2 l25-2 m1
0
1
0 1 29 19
0
end_operator
begin_operator
move-monkey l35-2 l34-2 m1
0
1
0 1 29 27
0
end_operator
begin_operator
move-monkey l35-2 l45-2 m1
0
1
0 1 29 39
0
end_operator
begin_operator
move-monkey l41-1 l31-1 m1
0
1
0 1 30 20
0
end_operator
begin_operator
move-monkey l41-1 l42-1 m1
0
1
0 1 30 32
0
end_operator
begin_operator
move-monkey l41-1 l51-1 m1
0
1
0 1 30 40
0
end_operator
begin_operator
move-monkey l41-2 l31-2 m1
0
1
0 1 31 21
0
end_operator
begin_operator
move-monkey l41-2 l42-2 m1
0
1
0 1 31 33
0
end_operator
begin_operator
move-monkey l41-2 l51-2 m1
0
1
0 1 31 41
0
end_operator
begin_operator
move-monkey l42-1 l32-1 m1
0
1
0 1 32 22
0
end_operator
begin_operator
move-monkey l42-1 l41-1 m1
0
1
0 1 32 30
0
end_operator
begin_operator
move-monkey l42-1 l43-1 m1
0
1
0 1 32 34
0
end_operator
begin_operator
move-monkey l42-1 l52-1 m1
0
1
0 1 32 42
0
end_operator
begin_operator
move-monkey l42-2 l32-2 m1
0
1
0 1 33 23
0
end_operator
begin_operator
move-monkey l42-2 l41-2 m1
0
1
0 1 33 31
0
end_operator
begin_operator
move-monkey l42-2 l43-2 m1
0
1
0 1 33 35
0
end_operator
begin_operator
move-monkey l42-2 l52-2 m1
0
1
0 1 33 43
0
end_operator
begin_operator
move-monkey l43-1 l33-1 m1
0
1
0 1 34 24
0
end_operator
begin_operator
move-monkey l43-1 l42-1 m1
0
1
0 1 34 32
0
end_operator
begin_operator
move-monkey l43-1 l44-1 m1
0
1
0 1 34 36
0
end_operator
begin_operator
move-monkey l43-1 l53-1 m1
0
1
0 1 34 44
0
end_operator
begin_operator
move-monkey l43-2 l33-2 m1
0
1
0 1 35 25
0
end_operator
begin_operator
move-monkey l43-2 l42-2 m1
0
1
0 1 35 33
0
end_operator
begin_operator
move-monkey l43-2 l44-2 m1
0
1
0 1 35 37
0
end_operator
begin_operator
move-monkey l43-2 l53-2 m1
0
1
0 1 35 45
0
end_operator
begin_operator
move-monkey l44-1 l34-1 m1
0
1
0 1 36 26
0
end_operator
begin_operator
move-monkey l44-1 l43-1 m1
0
1
0 1 36 34
0
end_operator
begin_operator
move-monkey l44-1 l45-1 m1
0
1
0 1 36 38
0
end_operator
begin_operator
move-monkey l44-1 l54-1 m1
0
1
0 1 36 46
0
end_operator
begin_operator
move-monkey l44-2 l34-2 m1
0
1
0 1 37 27
0
end_operator
begin_operator
move-monkey l44-2 l43-2 m1
0
1
0 1 37 35
0
end_operator
begin_operator
move-monkey l44-2 l45-2 m1
0
1
0 1 37 39
0
end_operator
begin_operator
move-monkey l44-2 l54-2 m1
0
1
0 1 37 47
0
end_operator
begin_operator
move-monkey l45-1 l35-1 m1
0
1
0 1 38 28
0
end_operator
begin_operator
move-monkey l45-1 l44-1 m1
0
1
0 1 38 36
0
end_operator
begin_operator
move-monkey l45-1 l55-1 m1
0
1
0 1 38 48
0
end_operator
begin_operator
move-monkey l45-2 l35-2 m1
0
1
0 1 39 29
0
end_operator
begin_operator
move-monkey l45-2 l44-2 m1
0
1
0 1 39 37
0
end_operator
begin_operator
move-monkey l45-2 l55-2 m1
0
1
0 1 39 49
0
end_operator
begin_operator
move-monkey l51-1 l41-1 m1
0
1
0 1 40 30
0
end_operator
begin_operator
move-monkey l51-1 l52-1 m1
0
1
0 1 40 42
0
end_operator
begin_operator
move-monkey l51-2 l41-2 m1
0
1
0 1 41 31
0
end_operator
begin_operator
move-monkey l51-2 l52-2 m1
0
1
0 1 41 43
0
end_operator
begin_operator
move-monkey l52-1 l42-1 m1
0
1
0 1 42 32
0
end_operator
begin_operator
move-monkey l52-1 l51-1 m1
0
1
0 1 42 40
0
end_operator
begin_operator
move-monkey l52-1 l53-1 m1
0
1
0 1 42 44
0
end_operator
begin_operator
move-monkey l52-2 l42-2 m1
0
1
0 1 43 33
0
end_operator
begin_operator
move-monkey l52-2 l51-2 m1
0
1
0 1 43 41
0
end_operator
begin_operator
move-monkey l52-2 l53-2 m1
0
1
0 1 43 45
0
end_operator
begin_operator
move-monkey l53-1 l43-1 m1
0
1
0 1 44 34
0
end_operator
begin_operator
move-monkey l53-1 l52-1 m1
0
1
0 1 44 42
0
end_operator
begin_operator
move-monkey l53-1 l54-1 m1
0
1
0 1 44 46
0
end_operator
begin_operator
move-monkey l53-2 l43-2 m1
0
1
0 1 45 35
0
end_operator
begin_operator
move-monkey l53-2 l52-2 m1
0
1
0 1 45 43
0
end_operator
begin_operator
move-monkey l53-2 l54-2 m1
0
1
0 1 45 47
0
end_operator
begin_operator
move-monkey l54-1 l44-1 m1
0
1
0 1 46 36
0
end_operator
begin_operator
move-monkey l54-1 l53-1 m1
0
1
0 1 46 44
0
end_operator
begin_operator
move-monkey l54-1 l55-1 m1
0
1
0 1 46 48
0
end_operator
begin_operator
move-monkey l54-2 l44-2 m1
0
1
0 1 47 37
0
end_operator
begin_operator
move-monkey l54-2 l53-2 m1
0
1
0 1 47 45
0
end_operator
begin_operator
move-monkey l54-2 l55-2 m1
0
1
0 1 47 49
0
end_operator
begin_operator
move-monkey l55-1 l45-1 m1
0
1
0 1 48 38
0
end_operator
begin_operator
move-monkey l55-1 l54-1 m1
0
1
0 1 48 46
0
end_operator
begin_operator
move-monkey l55-2 l45-2 m1
0
1
0 1 49 39
0
end_operator
begin_operator
move-monkey l55-2 l54-2 m1
0
1
0 1 49 47
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
0 3 0 10
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
0 3 1 11
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
0 3 2 12
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
0 3 3 13
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
move-person l13-1 l14-1
1
2 0
1
0 3 4 6
0
end_operator
begin_operator
move-person l13-1 l23-1
1
2 0
1
0 3 4 14
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
move-person l13-2 l14-2
1
2 0
1
0 3 5 7
0
end_operator
begin_operator
move-person l13-2 l23-2
1
2 0
1
0 3 5 15
0
end_operator
begin_operator
move-person l14-1 l13-1
1
2 0
1
0 3 6 4
0
end_operator
begin_operator
move-person l14-1 l15-1
1
2 0
1
0 3 6 8
0
end_operator
begin_operator
move-person l14-1 l24-1
1
2 0
1
0 3 6 16
0
end_operator
begin_operator
move-person l14-2 l13-2
1
2 0
1
0 3 7 5
0
end_operator
begin_operator
move-person l14-2 l15-2
1
2 0
1
0 3 7 9
0
end_operator
begin_operator
move-person l14-2 l24-2
1
2 0
1
0 3 7 17
0
end_operator
begin_operator
move-person l15-1 l14-1
1
2 0
1
0 3 8 6
0
end_operator
begin_operator
move-person l15-1 l25-1
1
2 0
1
0 3 8 18
0
end_operator
begin_operator
move-person l15-2 l14-2
1
2 0
1
0 3 9 7
0
end_operator
begin_operator
move-person l15-2 l25-2
1
2 0
1
0 3 9 19
0
end_operator
begin_operator
move-person l21-1 l11-1
1
2 0
1
0 3 10 0
0
end_operator
begin_operator
move-person l21-1 l22-1
1
2 0
1
0 3 10 12
0
end_operator
begin_operator
move-person l21-1 l31-1
1
2 0
1
0 3 10 20
0
end_operator
begin_operator
move-person l21-2 l11-2
1
2 0
1
0 3 11 1
0
end_operator
begin_operator
move-person l21-2 l22-2
1
2 0
1
0 3 11 13
0
end_operator
begin_operator
move-person l21-2 l31-2
1
2 0
1
0 3 11 21
0
end_operator
begin_operator
move-person l22-1 l12-1
1
2 0
1
0 3 12 2
0
end_operator
begin_operator
move-person l22-1 l21-1
1
2 0
1
0 3 12 10
0
end_operator
begin_operator
move-person l22-1 l23-1
1
2 0
1
0 3 12 14
0
end_operator
begin_operator
move-person l22-1 l32-1
1
2 0
1
0 3 12 22
0
end_operator
begin_operator
move-person l22-2 l12-2
1
2 0
1
0 3 13 3
0
end_operator
begin_operator
move-person l22-2 l21-2
1
2 0
1
0 3 13 11
0
end_operator
begin_operator
move-person l22-2 l23-2
1
2 0
1
0 3 13 15
0
end_operator
begin_operator
move-person l22-2 l32-2
1
2 0
1
0 3 13 23
0
end_operator
begin_operator
move-person l23-1 l13-1
1
2 0
1
0 3 14 4
0
end_operator
begin_operator
move-person l23-1 l22-1
1
2 0
1
0 3 14 12
0
end_operator
begin_operator
move-person l23-1 l24-1
1
2 0
1
0 3 14 16
0
end_operator
begin_operator
move-person l23-1 l33-1
1
2 0
1
0 3 14 24
0
end_operator
begin_operator
move-person l23-2 l13-2
1
2 0
1
0 3 15 5
0
end_operator
begin_operator
move-person l23-2 l22-2
1
2 0
1
0 3 15 13
0
end_operator
begin_operator
move-person l23-2 l24-2
1
2 0
1
0 3 15 17
0
end_operator
begin_operator
move-person l23-2 l33-2
1
2 0
1
0 3 15 25
0
end_operator
begin_operator
move-person l24-1 l14-1
1
2 0
1
0 3 16 6
0
end_operator
begin_operator
move-person l24-1 l23-1
1
2 0
1
0 3 16 14
0
end_operator
begin_operator
move-person l24-1 l25-1
1
2 0
1
0 3 16 18
0
end_operator
begin_operator
move-person l24-1 l34-1
1
2 0
1
0 3 16 26
0
end_operator
begin_operator
move-person l24-2 l14-2
1
2 0
1
0 3 17 7
0
end_operator
begin_operator
move-person l24-2 l23-2
1
2 0
1
0 3 17 15
0
end_operator
begin_operator
move-person l24-2 l25-2
1
2 0
1
0 3 17 19
0
end_operator
begin_operator
move-person l24-2 l34-2
1
2 0
1
0 3 17 27
0
end_operator
begin_operator
move-person l25-1 l15-1
1
2 0
1
0 3 18 8
0
end_operator
begin_operator
move-person l25-1 l24-1
1
2 0
1
0 3 18 16
0
end_operator
begin_operator
move-person l25-1 l35-1
1
2 0
1
0 3 18 28
0
end_operator
begin_operator
move-person l25-2 l15-2
1
2 0
1
0 3 19 9
0
end_operator
begin_operator
move-person l25-2 l24-2
1
2 0
1
0 3 19 17
0
end_operator
begin_operator
move-person l25-2 l35-2
1
2 0
1
0 3 19 29
0
end_operator
begin_operator
move-person l31-1 l21-1
1
2 0
1
0 3 20 10
0
end_operator
begin_operator
move-person l31-1 l32-1
1
2 0
1
0 3 20 22
0
end_operator
begin_operator
move-person l31-1 l41-1
1
2 0
1
0 3 20 30
0
end_operator
begin_operator
move-person l31-2 l21-2
1
2 0
1
0 3 21 11
0
end_operator
begin_operator
move-person l31-2 l32-2
1
2 0
1
0 3 21 23
0
end_operator
begin_operator
move-person l31-2 l41-2
1
2 0
1
0 3 21 31
0
end_operator
begin_operator
move-person l32-1 l22-1
1
2 0
1
0 3 22 12
0
end_operator
begin_operator
move-person l32-1 l31-1
1
2 0
1
0 3 22 20
0
end_operator
begin_operator
move-person l32-1 l33-1
1
2 0
1
0 3 22 24
0
end_operator
begin_operator
move-person l32-1 l42-1
1
2 0
1
0 3 22 32
0
end_operator
begin_operator
move-person l32-2 l22-2
1
2 0
1
0 3 23 13
0
end_operator
begin_operator
move-person l32-2 l31-2
1
2 0
1
0 3 23 21
0
end_operator
begin_operator
move-person l32-2 l33-2
1
2 0
1
0 3 23 25
0
end_operator
begin_operator
move-person l32-2 l42-2
1
2 0
1
0 3 23 33
0
end_operator
begin_operator
move-person l33-1 l23-1
1
2 0
1
0 3 24 14
0
end_operator
begin_operator
move-person l33-1 l32-1
1
2 0
1
0 3 24 22
0
end_operator
begin_operator
move-person l33-1 l34-1
1
2 0
1
0 3 24 26
0
end_operator
begin_operator
move-person l33-1 l43-1
1
2 0
1
0 3 24 34
0
end_operator
begin_operator
move-person l33-2 l23-2
1
2 0
1
0 3 25 15
0
end_operator
begin_operator
move-person l33-2 l32-2
1
2 0
1
0 3 25 23
0
end_operator
begin_operator
move-person l33-2 l34-2
1
2 0
1
0 3 25 27
0
end_operator
begin_operator
move-person l33-2 l43-2
1
2 0
1
0 3 25 35
0
end_operator
begin_operator
move-person l34-1 l24-1
1
2 0
1
0 3 26 16
0
end_operator
begin_operator
move-person l34-1 l33-1
1
2 0
1
0 3 26 24
0
end_operator
begin_operator
move-person l34-1 l35-1
1
2 0
1
0 3 26 28
0
end_operator
begin_operator
move-person l34-1 l44-1
1
2 0
1
0 3 26 36
0
end_operator
begin_operator
move-person l34-2 l24-2
1
2 0
1
0 3 27 17
0
end_operator
begin_operator
move-person l34-2 l33-2
1
2 0
1
0 3 27 25
0
end_operator
begin_operator
move-person l34-2 l35-2
1
2 0
1
0 3 27 29
0
end_operator
begin_operator
move-person l34-2 l44-2
1
2 0
1
0 3 27 37
0
end_operator
begin_operator
move-person l35-1 l25-1
1
2 0
1
0 3 28 18
0
end_operator
begin_operator
move-person l35-1 l34-1
1
2 0
1
0 3 28 26
0
end_operator
begin_operator
move-person l35-1 l45-1
1
2 0
1
0 3 28 38
0
end_operator
begin_operator
move-person l35-2 l25-2
1
2 0
1
0 3 29 19
0
end_operator
begin_operator
move-person l35-2 l34-2
1
2 0
1
0 3 29 27
0
end_operator
begin_operator
move-person l35-2 l45-2
1
2 0
1
0 3 29 39
0
end_operator
begin_operator
move-person l41-1 l31-1
1
2 0
1
0 3 30 20
0
end_operator
begin_operator
move-person l41-1 l42-1
1
2 0
1
0 3 30 32
0
end_operator
begin_operator
move-person l41-1 l51-1
1
2 0
1
0 3 30 40
0
end_operator
begin_operator
move-person l41-2 l31-2
1
2 0
1
0 3 31 21
0
end_operator
begin_operator
move-person l41-2 l42-2
1
2 0
1
0 3 31 33
0
end_operator
begin_operator
move-person l41-2 l51-2
1
2 0
1
0 3 31 41
0
end_operator
begin_operator
move-person l42-1 l32-1
1
2 0
1
0 3 32 22
0
end_operator
begin_operator
move-person l42-1 l41-1
1
2 0
1
0 3 32 30
0
end_operator
begin_operator
move-person l42-1 l43-1
1
2 0
1
0 3 32 34
0
end_operator
begin_operator
move-person l42-1 l52-1
1
2 0
1
0 3 32 42
0
end_operator
begin_operator
move-person l42-2 l32-2
1
2 0
1
0 3 33 23
0
end_operator
begin_operator
move-person l42-2 l41-2
1
2 0
1
0 3 33 31
0
end_operator
begin_operator
move-person l42-2 l43-2
1
2 0
1
0 3 33 35
0
end_operator
begin_operator
move-person l42-2 l52-2
1
2 0
1
0 3 33 43
0
end_operator
begin_operator
move-person l43-1 l33-1
1
2 0
1
0 3 34 24
0
end_operator
begin_operator
move-person l43-1 l42-1
1
2 0
1
0 3 34 32
0
end_operator
begin_operator
move-person l43-1 l44-1
1
2 0
1
0 3 34 36
0
end_operator
begin_operator
move-person l43-1 l53-1
1
2 0
1
0 3 34 44
0
end_operator
begin_operator
move-person l43-2 l33-2
1
2 0
1
0 3 35 25
0
end_operator
begin_operator
move-person l43-2 l42-2
1
2 0
1
0 3 35 33
0
end_operator
begin_operator
move-person l43-2 l44-2
1
2 0
1
0 3 35 37
0
end_operator
begin_operator
move-person l43-2 l53-2
1
2 0
1
0 3 35 45
0
end_operator
begin_operator
move-person l44-1 l34-1
1
2 0
1
0 3 36 26
0
end_operator
begin_operator
move-person l44-1 l43-1
1
2 0
1
0 3 36 34
0
end_operator
begin_operator
move-person l44-1 l45-1
1
2 0
1
0 3 36 38
0
end_operator
begin_operator
move-person l44-1 l54-1
1
2 0
1
0 3 36 46
0
end_operator
begin_operator
move-person l44-2 l34-2
1
2 0
1
0 3 37 27
0
end_operator
begin_operator
move-person l44-2 l43-2
1
2 0
1
0 3 37 35
0
end_operator
begin_operator
move-person l44-2 l45-2
1
2 0
1
0 3 37 39
0
end_operator
begin_operator
move-person l44-2 l54-2
1
2 0
1
0 3 37 47
0
end_operator
begin_operator
move-person l45-1 l35-1
1
2 0
1
0 3 38 28
0
end_operator
begin_operator
move-person l45-1 l44-1
1
2 0
1
0 3 38 36
0
end_operator
begin_operator
move-person l45-1 l55-1
1
2 0
1
0 3 38 48
0
end_operator
begin_operator
move-person l45-2 l35-2
1
2 0
1
0 3 39 29
0
end_operator
begin_operator
move-person l45-2 l44-2
1
2 0
1
0 3 39 37
0
end_operator
begin_operator
move-person l45-2 l55-2
1
2 0
1
0 3 39 49
0
end_operator
begin_operator
move-person l51-1 l41-1
1
2 0
1
0 3 40 30
0
end_operator
begin_operator
move-person l51-1 l52-1
1
2 0
1
0 3 40 42
0
end_operator
begin_operator
move-person l51-2 l41-2
1
2 0
1
0 3 41 31
0
end_operator
begin_operator
move-person l51-2 l52-2
1
2 0
1
0 3 41 43
0
end_operator
begin_operator
move-person l52-1 l42-1
1
2 0
1
0 3 42 32
0
end_operator
begin_operator
move-person l52-1 l51-1
1
2 0
1
0 3 42 40
0
end_operator
begin_operator
move-person l52-1 l53-1
1
2 0
1
0 3 42 44
0
end_operator
begin_operator
move-person l52-2 l42-2
1
2 0
1
0 3 43 33
0
end_operator
begin_operator
move-person l52-2 l51-2
1
2 0
1
0 3 43 41
0
end_operator
begin_operator
move-person l52-2 l53-2
1
2 0
1
0 3 43 45
0
end_operator
begin_operator
move-person l53-1 l43-1
1
2 0
1
0 3 44 34
0
end_operator
begin_operator
move-person l53-1 l52-1
1
2 0
1
0 3 44 42
0
end_operator
begin_operator
move-person l53-1 l54-1
1
2 0
1
0 3 44 46
0
end_operator
begin_operator
move-person l53-2 l43-2
1
2 0
1
0 3 45 35
0
end_operator
begin_operator
move-person l53-2 l52-2
1
2 0
1
0 3 45 43
0
end_operator
begin_operator
move-person l53-2 l54-2
1
2 0
1
0 3 45 47
0
end_operator
begin_operator
move-person l54-1 l44-1
1
2 0
1
0 3 46 36
0
end_operator
begin_operator
move-person l54-1 l53-1
1
2 0
1
0 3 46 44
0
end_operator
begin_operator
move-person l54-1 l55-1
1
2 0
1
0 3 46 48
0
end_operator
begin_operator
move-person l54-2 l44-2
1
2 0
1
0 3 47 37
0
end_operator
begin_operator
move-person l54-2 l53-2
1
2 0
1
0 3 47 45
0
end_operator
begin_operator
move-person l54-2 l55-2
1
2 0
1
0 3 47 49
0
end_operator
begin_operator
move-person l55-1 l45-1
1
2 0
1
0 3 48 38
0
end_operator
begin_operator
move-person l55-1 l54-1
1
2 0
1
0 3 48 46
0
end_operator
begin_operator
move-person l55-2 l45-2
1
2 0
1
0 3 49 39
0
end_operator
begin_operator
move-person l55-2 l54-2
1
2 0
1
0 3 49 47
0
end_operator
begin_operator
swim l15-1 l51-2
0
2
0 2 0 1
0 3 8 50
0
end_operator
begin_operator
swim l15-1 l51-2
1
2 0
1
0 3 8 41
0
end_operator
begin_operator
swim l25-1 l51-2
0
2
0 2 0 1
0 3 18 50
0
end_operator
begin_operator
swim l25-1 l51-2
1
2 0
1
0 3 18 41
0
end_operator
begin_operator
swim l35-1 l51-2
0
2
0 2 0 1
0 3 28 50
0
end_operator
begin_operator
swim l35-1 l51-2
1
2 0
1
0 3 28 41
0
end_operator
begin_operator
swim l45-1 l51-2
0
2
0 2 0 1
0 3 38 50
0
end_operator
begin_operator
swim l45-1 l51-2
1
2 0
1
0 3 38 41
0
end_operator
begin_operator
swim l51-2 l15-1
0
2
0 2 0 1
0 3 41 50
0
end_operator
begin_operator
swim l51-2 l15-1
1
2 0
1
0 3 41 8
0
end_operator
begin_operator
swim l51-2 l25-1
0
2
0 2 0 1
0 3 41 50
0
end_operator
begin_operator
swim l51-2 l25-1
1
2 0
1
0 3 41 18
0
end_operator
begin_operator
swim l51-2 l35-1
0
2
0 2 0 1
0 3 41 50
0
end_operator
begin_operator
swim l51-2 l35-1
1
2 0
1
0 3 41 28
0
end_operator
begin_operator
swim l51-2 l45-1
0
2
0 2 0 1
0 3 41 50
0
end_operator
begin_operator
swim l51-2 l45-1
1
2 0
1
0 3 41 38
0
end_operator
begin_operator
swim l51-2 l55-1
0
2
0 2 0 1
0 3 41 50
0
end_operator
begin_operator
swim l51-2 l55-1
1
2 0
1
0 3 41 48
0
end_operator
begin_operator
swim l55-1 l51-2
0
2
0 2 0 1
0 3 48 50
0
end_operator
begin_operator
swim l55-1 l51-2
1
2 0
1
0 3 48 41
0
end_operator
begin_operator
walk-on-bridge l11-1 l15-2
2
0 0
2 0
1
0 3 0 9
0
end_operator
begin_operator
walk-on-bridge l15-2 l11-1
2
0 0
2 0
1
0 3 9 0
0
end_operator
begin_operator
walk-on-bridge l21-1 l25-2
2
0 0
2 0
1
0 3 10 19
0
end_operator
begin_operator
walk-on-bridge l25-2 l21-1
2
0 0
2 0
1
0 3 19 10
0
end_operator
begin_operator
walk-on-bridge l31-1 l35-2
2
0 0
2 0
1
0 3 20 29
0
end_operator
begin_operator
walk-on-bridge l35-2 l31-1
2
0 0
2 0
1
0 3 29 20
0
end_operator
begin_operator
walk-on-bridge l41-1 l45-2
2
0 0
2 0
1
0 3 30 39
0
end_operator
begin_operator
walk-on-bridge l45-2 l41-1
2
0 0
2 0
1
0 3 39 30
0
end_operator
begin_operator
walk-on-bridge l51-1 l55-2
2
0 0
2 0
1
0 3 40 49
0
end_operator
begin_operator
walk-on-bridge l55-2 l51-1
2
0 0
2 0
1
0 3 49 40
0
end_operator
0
