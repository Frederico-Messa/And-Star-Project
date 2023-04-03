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
18
Atom at-aircraft(a0, c0)
Atom at-aircraft(a0, c1)
Atom at-aircraft(a0, c2)
Atom at-aircraft(a0, c3)
Atom at-aircraft(a0, c4)
Atom at-aircraft(a0, c5)
Atom flying(a0, c0)
Atom flying(a0, c1)
Atom flying(a0, c2)
Atom flying(a0, c3)
Atom flying(a0, c4)
Atom flying(a0, c5)
Atom zooming(a0, c0)
Atom zooming(a0, c1)
Atom zooming(a0, c2)
Atom zooming(a0, c3)
Atom zooming(a0, c4)
Atom zooming(a0, c5)
end_variable
begin_variable
var1
-1
18
Atom at-aircraft(a1, c0)
Atom at-aircraft(a1, c1)
Atom at-aircraft(a1, c2)
Atom at-aircraft(a1, c3)
Atom at-aircraft(a1, c4)
Atom at-aircraft(a1, c5)
Atom flying(a1, c0)
Atom flying(a1, c1)
Atom flying(a1, c2)
Atom flying(a1, c3)
Atom flying(a1, c4)
Atom flying(a1, c5)
Atom zooming(a1, c0)
Atom zooming(a1, c1)
Atom zooming(a1, c2)
Atom zooming(a1, c3)
Atom zooming(a1, c4)
Atom zooming(a1, c5)
end_variable
begin_variable
var2
-1
12
Atom at-person(p0, c0)
Atom at-person(p0, c1)
Atom at-person(p0, c2)
Atom at-person(p0, c3)
Atom at-person(p0, c4)
Atom at-person(p0, c5)
Atom boarding(p0, a0)
Atom boarding(p0, a1)
Atom debarking(p0, a0)
Atom debarking(p0, a1)
Atom in(p0, a0)
Atom in(p0, a1)
end_variable
begin_variable
var3
-1
12
Atom at-person(p1, c0)
Atom at-person(p1, c1)
Atom at-person(p1, c2)
Atom at-person(p1, c3)
Atom at-person(p1, c4)
Atom at-person(p1, c5)
Atom boarding(p1, a0)
Atom boarding(p1, a1)
Atom debarking(p1, a0)
Atom debarking(p1, a1)
Atom in(p1, a0)
Atom in(p1, a1)
end_variable
begin_variable
var4
-1
5
Atom fuel-level(a0, f0)
Atom fuel-level(a0, f1)
Atom fuel-level(a0, f2)
Atom fuel-level(a0, f3)
Atom fuel-level(a0, f4)
end_variable
begin_variable
var5
-1
5
Atom fuel-level(a1, f0)
Atom fuel-level(a1, f1)
Atom fuel-level(a1, f2)
Atom fuel-level(a1, f3)
Atom fuel-level(a1, f4)
end_variable
begin_variable
var6
-1
2
Atom not-boarding(p0)
NegatedAtom not-boarding(p0)
end_variable
begin_variable
var7
-1
2
Atom not-boarding(p1)
NegatedAtom not-boarding(p1)
end_variable
begin_variable
var8
-1
2
Atom not-debarking(p0)
NegatedAtom not-debarking(p0)
end_variable
begin_variable
var9
-1
2
Atom not-debarking(p1)
NegatedAtom not-debarking(p1)
end_variable
begin_variable
var10
-1
2
Atom not-refueling(a0)
Atom refueling(a0)
end_variable
begin_variable
var11
-1
2
Atom not-refueling(a1)
Atom refueling(a1)
end_variable
8
begin_mutex_group
18
0 0
0 1
0 2
0 3
0 4
0 5
0 6
0 7
0 8
0 9
0 10
0 11
0 12
0 13
0 14
0 15
0 16
0 17
end_mutex_group
begin_mutex_group
18
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
end_mutex_group
begin_mutex_group
12
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
2 9
2 10
2 11
end_mutex_group
begin_mutex_group
12
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
end_mutex_group
begin_mutex_group
5
4 0
4 1
4 2
4 3
4 4
end_mutex_group
begin_mutex_group
5
5 0
5 1
5 2
5 3
5 4
end_mutex_group
begin_mutex_group
2
10 0
10 1
end_mutex_group
begin_mutex_group
2
11 0
11 1
end_mutex_group
begin_state
1
0
3
4
1
4
0
0
0
0
0
0
end_state
begin_goal
2
2 4
3 5
end_goal
740
begin_operator
complete-boarding p0 a0 c0
1
0 0
2
0 2 6 10
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a0 c1
1
0 1
2
0 2 6 10
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a0 c2
1
0 2
2
0 2 6 10
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a0 c3
1
0 3
2
0 2 6 10
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a0 c4
1
0 4
2
0 2 6 10
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a0 c5
1
0 5
2
0 2 6 10
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a1 c0
1
1 0
2
0 2 7 11
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a1 c1
1
1 1
2
0 2 7 11
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a1 c2
1
1 2
2
0 2 7 11
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a1 c3
1
1 3
2
0 2 7 11
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a1 c4
1
1 4
2
0 2 7 11
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p0 a1 c5
1
1 5
2
0 2 7 11
0 6 -1 0
0
end_operator
begin_operator
complete-boarding p1 a0 c0
1
0 0
2
0 3 6 10
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a0 c1
1
0 1
2
0 3 6 10
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a0 c2
1
0 2
2
0 3 6 10
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a0 c3
1
0 3
2
0 3 6 10
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a0 c4
1
0 4
2
0 3 6 10
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a0 c5
1
0 5
2
0 3 6 10
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a1 c0
1
1 0
2
0 3 7 11
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a1 c1
1
1 1
2
0 3 7 11
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a1 c2
1
1 2
2
0 3 7 11
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a1 c3
1
1 3
2
0 3 7 11
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a1 c4
1
1 4
2
0 3 7 11
0 7 -1 0
0
end_operator
begin_operator
complete-boarding p1 a1 c5
1
1 5
2
0 3 7 11
0 7 -1 0
0
end_operator
begin_operator
complete-debarking p0 a0 c0
1
0 0
2
0 2 8 0
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a0 c1
1
0 1
2
0 2 8 1
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a0 c2
1
0 2
2
0 2 8 2
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a0 c3
1
0 3
2
0 2 8 3
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a0 c4
1
0 4
2
0 2 8 4
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a0 c5
1
0 5
2
0 2 8 5
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a1 c0
1
1 0
2
0 2 9 0
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a1 c1
1
1 1
2
0 2 9 1
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a1 c2
1
1 2
2
0 2 9 2
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a1 c3
1
1 3
2
0 2 9 3
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a1 c4
1
1 4
2
0 2 9 4
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p0 a1 c5
1
1 5
2
0 2 9 5
0 8 -1 0
0
end_operator
begin_operator
complete-debarking p1 a0 c0
1
0 0
2
0 3 8 0
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a0 c1
1
0 1
2
0 3 8 1
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a0 c2
1
0 2
2
0 3 8 2
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a0 c3
1
0 3
2
0 3 8 3
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a0 c4
1
0 4
2
0 3 8 4
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a0 c5
1
0 5
2
0 3 8 5
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a1 c0
1
1 0
2
0 3 9 0
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a1 c1
1
1 1
2
0 3 9 1
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a1 c2
1
1 2
2
0 3 9 2
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a1 c3
1
1 3
2
0 3 9 3
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a1 c4
1
1 4
2
0 3 9 4
0 9 -1 0
0
end_operator
begin_operator
complete-debarking p1 a1 c5
1
1 5
2
0 3 9 5
0 9 -1 0
0
end_operator
begin_operator
complete-flying a0 c0 f1 f0
0
2
0 0 6 0
0 4 1 0
0
end_operator
begin_operator
complete-flying a0 c0 f2 f1
0
2
0 0 6 0
0 4 2 1
0
end_operator
begin_operator
complete-flying a0 c0 f3 f2
0
2
0 0 6 0
0 4 3 2
0
end_operator
begin_operator
complete-flying a0 c0 f4 f3
0
2
0 0 6 0
0 4 4 3
0
end_operator
begin_operator
complete-flying a0 c1 f1 f0
0
2
0 0 7 1
0 4 1 0
0
end_operator
begin_operator
complete-flying a0 c1 f2 f1
0
2
0 0 7 1
0 4 2 1
0
end_operator
begin_operator
complete-flying a0 c1 f3 f2
0
2
0 0 7 1
0 4 3 2
0
end_operator
begin_operator
complete-flying a0 c1 f4 f3
0
2
0 0 7 1
0 4 4 3
0
end_operator
begin_operator
complete-flying a0 c2 f1 f0
0
2
0 0 8 2
0 4 1 0
0
end_operator
begin_operator
complete-flying a0 c2 f2 f1
0
2
0 0 8 2
0 4 2 1
0
end_operator
begin_operator
complete-flying a0 c2 f3 f2
0
2
0 0 8 2
0 4 3 2
0
end_operator
begin_operator
complete-flying a0 c2 f4 f3
0
2
0 0 8 2
0 4 4 3
0
end_operator
begin_operator
complete-flying a0 c3 f1 f0
0
2
0 0 9 3
0 4 1 0
0
end_operator
begin_operator
complete-flying a0 c3 f2 f1
0
2
0 0 9 3
0 4 2 1
0
end_operator
begin_operator
complete-flying a0 c3 f3 f2
0
2
0 0 9 3
0 4 3 2
0
end_operator
begin_operator
complete-flying a0 c3 f4 f3
0
2
0 0 9 3
0 4 4 3
0
end_operator
begin_operator
complete-flying a0 c4 f1 f0
0
2
0 0 10 4
0 4 1 0
0
end_operator
begin_operator
complete-flying a0 c4 f2 f1
0
2
0 0 10 4
0 4 2 1
0
end_operator
begin_operator
complete-flying a0 c4 f3 f2
0
2
0 0 10 4
0 4 3 2
0
end_operator
begin_operator
complete-flying a0 c4 f4 f3
0
2
0 0 10 4
0 4 4 3
0
end_operator
begin_operator
complete-flying a0 c5 f1 f0
0
2
0 0 11 5
0 4 1 0
0
end_operator
begin_operator
complete-flying a0 c5 f2 f1
0
2
0 0 11 5
0 4 2 1
0
end_operator
begin_operator
complete-flying a0 c5 f3 f2
0
2
0 0 11 5
0 4 3 2
0
end_operator
begin_operator
complete-flying a0 c5 f4 f3
0
2
0 0 11 5
0 4 4 3
0
end_operator
begin_operator
complete-flying a1 c0 f1 f0
0
2
0 1 6 0
0 5 1 0
0
end_operator
begin_operator
complete-flying a1 c0 f2 f1
0
2
0 1 6 0
0 5 2 1
0
end_operator
begin_operator
complete-flying a1 c0 f3 f2
0
2
0 1 6 0
0 5 3 2
0
end_operator
begin_operator
complete-flying a1 c0 f4 f3
0
2
0 1 6 0
0 5 4 3
0
end_operator
begin_operator
complete-flying a1 c1 f1 f0
0
2
0 1 7 1
0 5 1 0
0
end_operator
begin_operator
complete-flying a1 c1 f2 f1
0
2
0 1 7 1
0 5 2 1
0
end_operator
begin_operator
complete-flying a1 c1 f3 f2
0
2
0 1 7 1
0 5 3 2
0
end_operator
begin_operator
complete-flying a1 c1 f4 f3
0
2
0 1 7 1
0 5 4 3
0
end_operator
begin_operator
complete-flying a1 c2 f1 f0
0
2
0 1 8 2
0 5 1 0
0
end_operator
begin_operator
complete-flying a1 c2 f2 f1
0
2
0 1 8 2
0 5 2 1
0
end_operator
begin_operator
complete-flying a1 c2 f3 f2
0
2
0 1 8 2
0 5 3 2
0
end_operator
begin_operator
complete-flying a1 c2 f4 f3
0
2
0 1 8 2
0 5 4 3
0
end_operator
begin_operator
complete-flying a1 c3 f1 f0
0
2
0 1 9 3
0 5 1 0
0
end_operator
begin_operator
complete-flying a1 c3 f2 f1
0
2
0 1 9 3
0 5 2 1
0
end_operator
begin_operator
complete-flying a1 c3 f3 f2
0
2
0 1 9 3
0 5 3 2
0
end_operator
begin_operator
complete-flying a1 c3 f4 f3
0
2
0 1 9 3
0 5 4 3
0
end_operator
begin_operator
complete-flying a1 c4 f1 f0
0
2
0 1 10 4
0 5 1 0
0
end_operator
begin_operator
complete-flying a1 c4 f2 f1
0
2
0 1 10 4
0 5 2 1
0
end_operator
begin_operator
complete-flying a1 c4 f3 f2
0
2
0 1 10 4
0 5 3 2
0
end_operator
begin_operator
complete-flying a1 c4 f4 f3
0
2
0 1 10 4
0 5 4 3
0
end_operator
begin_operator
complete-flying a1 c5 f1 f0
0
2
0 1 11 5
0 5 1 0
0
end_operator
begin_operator
complete-flying a1 c5 f2 f1
0
2
0 1 11 5
0 5 2 1
0
end_operator
begin_operator
complete-flying a1 c5 f3 f2
0
2
0 1 11 5
0 5 3 2
0
end_operator
begin_operator
complete-flying a1 c5 f4 f3
0
2
0 1 11 5
0 5 4 3
0
end_operator
begin_operator
complete-refuling a0 f0 f1
0
2
0 4 0 1
0 10 1 0
0
end_operator
begin_operator
complete-refuling a0 f1 f2
0
2
0 4 1 2
0 10 1 0
0
end_operator
begin_operator
complete-refuling a0 f2 f3
0
2
0 4 2 3
0 10 1 0
0
end_operator
begin_operator
complete-refuling a0 f3 f4
0
2
0 4 3 4
0 10 1 0
0
end_operator
begin_operator
complete-refuling a1 f0 f1
0
2
0 5 0 1
0 11 1 0
0
end_operator
begin_operator
complete-refuling a1 f1 f2
0
2
0 5 1 2
0 11 1 0
0
end_operator
begin_operator
complete-refuling a1 f2 f3
0
2
0 5 2 3
0 11 1 0
0
end_operator
begin_operator
complete-refuling a1 f3 f4
0
2
0 5 3 4
0 11 1 0
0
end_operator
begin_operator
complete-zooming a0 c0 f2 f1 f0
0
2
0 0 12 0
0 4 2 0
0
end_operator
begin_operator
complete-zooming a0 c0 f3 f2 f1
0
2
0 0 12 0
0 4 3 1
0
end_operator
begin_operator
complete-zooming a0 c0 f4 f3 f2
0
2
0 0 12 0
0 4 4 2
0
end_operator
begin_operator
complete-zooming a0 c1 f2 f1 f0
0
2
0 0 13 1
0 4 2 0
0
end_operator
begin_operator
complete-zooming a0 c1 f3 f2 f1
0
2
0 0 13 1
0 4 3 1
0
end_operator
begin_operator
complete-zooming a0 c1 f4 f3 f2
0
2
0 0 13 1
0 4 4 2
0
end_operator
begin_operator
complete-zooming a0 c2 f2 f1 f0
0
2
0 0 14 2
0 4 2 0
0
end_operator
begin_operator
complete-zooming a0 c2 f3 f2 f1
0
2
0 0 14 2
0 4 3 1
0
end_operator
begin_operator
complete-zooming a0 c2 f4 f3 f2
0
2
0 0 14 2
0 4 4 2
0
end_operator
begin_operator
complete-zooming a0 c3 f2 f1 f0
0
2
0 0 15 3
0 4 2 0
0
end_operator
begin_operator
complete-zooming a0 c3 f3 f2 f1
0
2
0 0 15 3
0 4 3 1
0
end_operator
begin_operator
complete-zooming a0 c3 f4 f3 f2
0
2
0 0 15 3
0 4 4 2
0
end_operator
begin_operator
complete-zooming a0 c4 f2 f1 f0
0
2
0 0 16 4
0 4 2 0
0
end_operator
begin_operator
complete-zooming a0 c4 f3 f2 f1
0
2
0 0 16 4
0 4 3 1
0
end_operator
begin_operator
complete-zooming a0 c4 f4 f3 f2
0
2
0 0 16 4
0 4 4 2
0
end_operator
begin_operator
complete-zooming a0 c5 f2 f1 f0
0
2
0 0 17 5
0 4 2 0
0
end_operator
begin_operator
complete-zooming a0 c5 f3 f2 f1
0
2
0 0 17 5
0 4 3 1
0
end_operator
begin_operator
complete-zooming a0 c5 f4 f3 f2
0
2
0 0 17 5
0 4 4 2
0
end_operator
begin_operator
complete-zooming a1 c0 f2 f1 f0
0
2
0 1 12 0
0 5 2 0
0
end_operator
begin_operator
complete-zooming a1 c0 f3 f2 f1
0
2
0 1 12 0
0 5 3 1
0
end_operator
begin_operator
complete-zooming a1 c0 f4 f3 f2
0
2
0 1 12 0
0 5 4 2
0
end_operator
begin_operator
complete-zooming a1 c1 f2 f1 f0
0
2
0 1 13 1
0 5 2 0
0
end_operator
begin_operator
complete-zooming a1 c1 f3 f2 f1
0
2
0 1 13 1
0 5 3 1
0
end_operator
begin_operator
complete-zooming a1 c1 f4 f3 f2
0
2
0 1 13 1
0 5 4 2
0
end_operator
begin_operator
complete-zooming a1 c2 f2 f1 f0
0
2
0 1 14 2
0 5 2 0
0
end_operator
begin_operator
complete-zooming a1 c2 f3 f2 f1
0
2
0 1 14 2
0 5 3 1
0
end_operator
begin_operator
complete-zooming a1 c2 f4 f3 f2
0
2
0 1 14 2
0 5 4 2
0
end_operator
begin_operator
complete-zooming a1 c3 f2 f1 f0
0
2
0 1 15 3
0 5 2 0
0
end_operator
begin_operator
complete-zooming a1 c3 f3 f2 f1
0
2
0 1 15 3
0 5 3 1
0
end_operator
begin_operator
complete-zooming a1 c3 f4 f3 f2
0
2
0 1 15 3
0 5 4 2
0
end_operator
begin_operator
complete-zooming a1 c4 f2 f1 f0
0
2
0 1 16 4
0 5 2 0
0
end_operator
begin_operator
complete-zooming a1 c4 f3 f2 f1
0
2
0 1 16 4
0 5 3 1
0
end_operator
begin_operator
complete-zooming a1 c4 f4 f3 f2
0
2
0 1 16 4
0 5 4 2
0
end_operator
begin_operator
complete-zooming a1 c5 f2 f1 f0
0
2
0 1 17 5
0 5 2 0
0
end_operator
begin_operator
complete-zooming a1 c5 f3 f2 f1
0
2
0 1 17 5
0 5 3 1
0
end_operator
begin_operator
complete-zooming a1 c5 f4 f3 f2
0
2
0 1 17 5
0 5 4 2
0
end_operator
begin_operator
start-boarding p0 a0 c0
1
0 0
2
0 2 0 6
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a0 c1
1
0 1
2
0 2 1 6
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a0 c2
1
0 2
2
0 2 2 6
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a0 c3
1
0 3
2
0 2 3 6
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a0 c4
1
0 4
2
0 2 4 6
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a0 c5
1
0 5
2
0 2 5 6
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a1 c0
1
1 0
2
0 2 0 7
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a1 c1
1
1 1
2
0 2 1 7
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a1 c2
1
1 2
2
0 2 2 7
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a1 c3
1
1 3
2
0 2 3 7
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a1 c4
1
1 4
2
0 2 4 7
0 6 -1 1
0
end_operator
begin_operator
start-boarding p0 a1 c5
1
1 5
2
0 2 5 7
0 6 -1 1
0
end_operator
begin_operator
start-boarding p1 a0 c0
1
0 0
2
0 3 0 6
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a0 c1
1
0 1
2
0 3 1 6
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a0 c2
1
0 2
2
0 3 2 6
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a0 c3
1
0 3
2
0 3 3 6
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a0 c4
1
0 4
2
0 3 4 6
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a0 c5
1
0 5
2
0 3 5 6
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a1 c0
1
1 0
2
0 3 0 7
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a1 c1
1
1 1
2
0 3 1 7
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a1 c2
1
1 2
2
0 3 2 7
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a1 c3
1
1 3
2
0 3 3 7
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a1 c4
1
1 4
2
0 3 4 7
0 7 -1 1
0
end_operator
begin_operator
start-boarding p1 a1 c5
1
1 5
2
0 3 5 7
0 7 -1 1
0
end_operator
begin_operator
start-debarking p0 a0 c0
1
0 0
2
0 2 10 8
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a0 c1
1
0 1
2
0 2 10 8
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a0 c2
1
0 2
2
0 2 10 8
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a0 c3
1
0 3
2
0 2 10 8
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a0 c4
1
0 4
2
0 2 10 8
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a0 c5
1
0 5
2
0 2 10 8
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a1 c0
1
1 0
2
0 2 11 9
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a1 c1
1
1 1
2
0 2 11 9
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a1 c2
1
1 2
2
0 2 11 9
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a1 c3
1
1 3
2
0 2 11 9
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a1 c4
1
1 4
2
0 2 11 9
0 8 -1 1
0
end_operator
begin_operator
start-debarking p0 a1 c5
1
1 5
2
0 2 11 9
0 8 -1 1
0
end_operator
begin_operator
start-debarking p1 a0 c0
1
0 0
2
0 3 10 8
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a0 c1
1
0 1
2
0 3 10 8
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a0 c2
1
0 2
2
0 3 10 8
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a0 c3
1
0 3
2
0 3 10 8
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a0 c4
1
0 4
2
0 3 10 8
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a0 c5
1
0 5
2
0 3 10 8
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a1 c0
1
1 0
2
0 3 11 9
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a1 c1
1
1 1
2
0 3 11 9
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a1 c2
1
1 2
2
0 3 11 9
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a1 c3
1
1 3
2
0 3 11 9
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a1 c4
1
1 4
2
0 3 11 9
0 9 -1 1
0
end_operator
begin_operator
start-debarking p1 a1 c5
1
1 5
2
0 3 11 9
0 9 -1 1
0
end_operator
begin_operator
start-flying a0 c0 c0 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 0 6
0
end_operator
begin_operator
start-flying a0 c0 c0 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 6
0
end_operator
begin_operator
start-flying a0 c0 c0 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 6
0
end_operator
begin_operator
start-flying a0 c0 c0 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 6
0
end_operator
begin_operator
start-flying a0 c0 c1 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 0 7
0
end_operator
begin_operator
start-flying a0 c0 c1 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 7
0
end_operator
begin_operator
start-flying a0 c0 c1 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 7
0
end_operator
begin_operator
start-flying a0 c0 c1 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 7
0
end_operator
begin_operator
start-flying a0 c0 c2 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 0 8
0
end_operator
begin_operator
start-flying a0 c0 c2 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 8
0
end_operator
begin_operator
start-flying a0 c0 c2 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 8
0
end_operator
begin_operator
start-flying a0 c0 c2 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 8
0
end_operator
begin_operator
start-flying a0 c0 c3 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 0 9
0
end_operator
begin_operator
start-flying a0 c0 c3 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 9
0
end_operator
begin_operator
start-flying a0 c0 c3 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 9
0
end_operator
begin_operator
start-flying a0 c0 c3 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 9
0
end_operator
begin_operator
start-flying a0 c0 c4 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 0 10
0
end_operator
begin_operator
start-flying a0 c0 c4 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 10
0
end_operator
begin_operator
start-flying a0 c0 c4 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 10
0
end_operator
begin_operator
start-flying a0 c0 c4 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 10
0
end_operator
begin_operator
start-flying a0 c0 c5 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 0 11
0
end_operator
begin_operator
start-flying a0 c0 c5 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 11
0
end_operator
begin_operator
start-flying a0 c0 c5 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 11
0
end_operator
begin_operator
start-flying a0 c0 c5 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 11
0
end_operator
begin_operator
start-flying a0 c1 c0 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 1 6
0
end_operator
begin_operator
start-flying a0 c1 c0 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 6
0
end_operator
begin_operator
start-flying a0 c1 c0 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 6
0
end_operator
begin_operator
start-flying a0 c1 c0 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 6
0
end_operator
begin_operator
start-flying a0 c1 c1 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 1 7
0
end_operator
begin_operator
start-flying a0 c1 c1 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 7
0
end_operator
begin_operator
start-flying a0 c1 c1 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 7
0
end_operator
begin_operator
start-flying a0 c1 c1 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 7
0
end_operator
begin_operator
start-flying a0 c1 c2 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 1 8
0
end_operator
begin_operator
start-flying a0 c1 c2 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 8
0
end_operator
begin_operator
start-flying a0 c1 c2 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 8
0
end_operator
begin_operator
start-flying a0 c1 c2 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 8
0
end_operator
begin_operator
start-flying a0 c1 c3 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 1 9
0
end_operator
begin_operator
start-flying a0 c1 c3 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 9
0
end_operator
begin_operator
start-flying a0 c1 c3 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 9
0
end_operator
begin_operator
start-flying a0 c1 c3 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 9
0
end_operator
begin_operator
start-flying a0 c1 c4 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 1 10
0
end_operator
begin_operator
start-flying a0 c1 c4 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 10
0
end_operator
begin_operator
start-flying a0 c1 c4 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 10
0
end_operator
begin_operator
start-flying a0 c1 c4 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 10
0
end_operator
begin_operator
start-flying a0 c1 c5 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 1 11
0
end_operator
begin_operator
start-flying a0 c1 c5 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 11
0
end_operator
begin_operator
start-flying a0 c1 c5 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 11
0
end_operator
begin_operator
start-flying a0 c1 c5 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 11
0
end_operator
begin_operator
start-flying a0 c2 c0 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 2 6
0
end_operator
begin_operator
start-flying a0 c2 c0 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 6
0
end_operator
begin_operator
start-flying a0 c2 c0 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 6
0
end_operator
begin_operator
start-flying a0 c2 c0 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 6
0
end_operator
begin_operator
start-flying a0 c2 c1 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 2 7
0
end_operator
begin_operator
start-flying a0 c2 c1 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 7
0
end_operator
begin_operator
start-flying a0 c2 c1 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 7
0
end_operator
begin_operator
start-flying a0 c2 c1 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 7
0
end_operator
begin_operator
start-flying a0 c2 c2 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 2 8
0
end_operator
begin_operator
start-flying a0 c2 c2 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 8
0
end_operator
begin_operator
start-flying a0 c2 c2 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 8
0
end_operator
begin_operator
start-flying a0 c2 c2 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 8
0
end_operator
begin_operator
start-flying a0 c2 c3 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 2 9
0
end_operator
begin_operator
start-flying a0 c2 c3 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 9
0
end_operator
begin_operator
start-flying a0 c2 c3 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 9
0
end_operator
begin_operator
start-flying a0 c2 c3 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 9
0
end_operator
begin_operator
start-flying a0 c2 c4 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 2 10
0
end_operator
begin_operator
start-flying a0 c2 c4 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 10
0
end_operator
begin_operator
start-flying a0 c2 c4 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 10
0
end_operator
begin_operator
start-flying a0 c2 c4 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 10
0
end_operator
begin_operator
start-flying a0 c2 c5 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 2 11
0
end_operator
begin_operator
start-flying a0 c2 c5 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 11
0
end_operator
begin_operator
start-flying a0 c2 c5 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 11
0
end_operator
begin_operator
start-flying a0 c2 c5 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 11
0
end_operator
begin_operator
start-flying a0 c3 c0 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 3 6
0
end_operator
begin_operator
start-flying a0 c3 c0 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 6
0
end_operator
begin_operator
start-flying a0 c3 c0 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 6
0
end_operator
begin_operator
start-flying a0 c3 c0 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 6
0
end_operator
begin_operator
start-flying a0 c3 c1 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 3 7
0
end_operator
begin_operator
start-flying a0 c3 c1 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 7
0
end_operator
begin_operator
start-flying a0 c3 c1 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 7
0
end_operator
begin_operator
start-flying a0 c3 c1 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 7
0
end_operator
begin_operator
start-flying a0 c3 c2 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 3 8
0
end_operator
begin_operator
start-flying a0 c3 c2 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 8
0
end_operator
begin_operator
start-flying a0 c3 c2 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 8
0
end_operator
begin_operator
start-flying a0 c3 c2 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 8
0
end_operator
begin_operator
start-flying a0 c3 c3 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 3 9
0
end_operator
begin_operator
start-flying a0 c3 c3 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 9
0
end_operator
begin_operator
start-flying a0 c3 c3 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 9
0
end_operator
begin_operator
start-flying a0 c3 c3 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 9
0
end_operator
begin_operator
start-flying a0 c3 c4 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 3 10
0
end_operator
begin_operator
start-flying a0 c3 c4 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 10
0
end_operator
begin_operator
start-flying a0 c3 c4 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 10
0
end_operator
begin_operator
start-flying a0 c3 c4 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 10
0
end_operator
begin_operator
start-flying a0 c3 c5 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 3 11
0
end_operator
begin_operator
start-flying a0 c3 c5 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 11
0
end_operator
begin_operator
start-flying a0 c3 c5 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 11
0
end_operator
begin_operator
start-flying a0 c3 c5 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 11
0
end_operator
begin_operator
start-flying a0 c4 c0 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 4 6
0
end_operator
begin_operator
start-flying a0 c4 c0 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 6
0
end_operator
begin_operator
start-flying a0 c4 c0 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 6
0
end_operator
begin_operator
start-flying a0 c4 c0 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 6
0
end_operator
begin_operator
start-flying a0 c4 c1 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 4 7
0
end_operator
begin_operator
start-flying a0 c4 c1 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 7
0
end_operator
begin_operator
start-flying a0 c4 c1 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 7
0
end_operator
begin_operator
start-flying a0 c4 c1 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 7
0
end_operator
begin_operator
start-flying a0 c4 c2 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 4 8
0
end_operator
begin_operator
start-flying a0 c4 c2 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 8
0
end_operator
begin_operator
start-flying a0 c4 c2 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 8
0
end_operator
begin_operator
start-flying a0 c4 c2 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 8
0
end_operator
begin_operator
start-flying a0 c4 c3 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 4 9
0
end_operator
begin_operator
start-flying a0 c4 c3 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 9
0
end_operator
begin_operator
start-flying a0 c4 c3 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 9
0
end_operator
begin_operator
start-flying a0 c4 c3 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 9
0
end_operator
begin_operator
start-flying a0 c4 c4 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 4 10
0
end_operator
begin_operator
start-flying a0 c4 c4 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 10
0
end_operator
begin_operator
start-flying a0 c4 c4 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 10
0
end_operator
begin_operator
start-flying a0 c4 c4 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 10
0
end_operator
begin_operator
start-flying a0 c4 c5 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 4 11
0
end_operator
begin_operator
start-flying a0 c4 c5 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 11
0
end_operator
begin_operator
start-flying a0 c4 c5 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 11
0
end_operator
begin_operator
start-flying a0 c4 c5 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 11
0
end_operator
begin_operator
start-flying a0 c5 c0 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 5 6
0
end_operator
begin_operator
start-flying a0 c5 c0 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 6
0
end_operator
begin_operator
start-flying a0 c5 c0 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 6
0
end_operator
begin_operator
start-flying a0 c5 c0 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 6
0
end_operator
begin_operator
start-flying a0 c5 c1 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 5 7
0
end_operator
begin_operator
start-flying a0 c5 c1 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 7
0
end_operator
begin_operator
start-flying a0 c5 c1 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 7
0
end_operator
begin_operator
start-flying a0 c5 c1 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 7
0
end_operator
begin_operator
start-flying a0 c5 c2 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 5 8
0
end_operator
begin_operator
start-flying a0 c5 c2 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 8
0
end_operator
begin_operator
start-flying a0 c5 c2 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 8
0
end_operator
begin_operator
start-flying a0 c5 c2 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 8
0
end_operator
begin_operator
start-flying a0 c5 c3 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 5 9
0
end_operator
begin_operator
start-flying a0 c5 c3 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 9
0
end_operator
begin_operator
start-flying a0 c5 c3 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 9
0
end_operator
begin_operator
start-flying a0 c5 c3 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 9
0
end_operator
begin_operator
start-flying a0 c5 c4 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 5 10
0
end_operator
begin_operator
start-flying a0 c5 c4 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 10
0
end_operator
begin_operator
start-flying a0 c5 c4 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 10
0
end_operator
begin_operator
start-flying a0 c5 c4 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 10
0
end_operator
begin_operator
start-flying a0 c5 c5 f1 f0
6
4 1
6 0
7 0
8 0
9 0
10 0
1
0 0 5 11
0
end_operator
begin_operator
start-flying a0 c5 c5 f2 f1
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 11
0
end_operator
begin_operator
start-flying a0 c5 c5 f3 f2
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 11
0
end_operator
begin_operator
start-flying a0 c5 c5 f4 f3
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 11
0
end_operator
begin_operator
start-flying a1 c0 c0 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 0 6
0
end_operator
begin_operator
start-flying a1 c0 c0 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 6
0
end_operator
begin_operator
start-flying a1 c0 c0 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 6
0
end_operator
begin_operator
start-flying a1 c0 c0 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 6
0
end_operator
begin_operator
start-flying a1 c0 c1 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 0 7
0
end_operator
begin_operator
start-flying a1 c0 c1 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 7
0
end_operator
begin_operator
start-flying a1 c0 c1 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 7
0
end_operator
begin_operator
start-flying a1 c0 c1 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 7
0
end_operator
begin_operator
start-flying a1 c0 c2 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 0 8
0
end_operator
begin_operator
start-flying a1 c0 c2 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 8
0
end_operator
begin_operator
start-flying a1 c0 c2 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 8
0
end_operator
begin_operator
start-flying a1 c0 c2 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 8
0
end_operator
begin_operator
start-flying a1 c0 c3 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 0 9
0
end_operator
begin_operator
start-flying a1 c0 c3 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 9
0
end_operator
begin_operator
start-flying a1 c0 c3 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 9
0
end_operator
begin_operator
start-flying a1 c0 c3 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 9
0
end_operator
begin_operator
start-flying a1 c0 c4 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 0 10
0
end_operator
begin_operator
start-flying a1 c0 c4 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 10
0
end_operator
begin_operator
start-flying a1 c0 c4 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 10
0
end_operator
begin_operator
start-flying a1 c0 c4 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 10
0
end_operator
begin_operator
start-flying a1 c0 c5 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 0 11
0
end_operator
begin_operator
start-flying a1 c0 c5 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 11
0
end_operator
begin_operator
start-flying a1 c0 c5 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 11
0
end_operator
begin_operator
start-flying a1 c0 c5 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 11
0
end_operator
begin_operator
start-flying a1 c1 c0 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 1 6
0
end_operator
begin_operator
start-flying a1 c1 c0 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 6
0
end_operator
begin_operator
start-flying a1 c1 c0 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 6
0
end_operator
begin_operator
start-flying a1 c1 c0 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 6
0
end_operator
begin_operator
start-flying a1 c1 c1 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 1 7
0
end_operator
begin_operator
start-flying a1 c1 c1 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 7
0
end_operator
begin_operator
start-flying a1 c1 c1 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 7
0
end_operator
begin_operator
start-flying a1 c1 c1 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 7
0
end_operator
begin_operator
start-flying a1 c1 c2 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 1 8
0
end_operator
begin_operator
start-flying a1 c1 c2 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 8
0
end_operator
begin_operator
start-flying a1 c1 c2 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 8
0
end_operator
begin_operator
start-flying a1 c1 c2 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 8
0
end_operator
begin_operator
start-flying a1 c1 c3 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 1 9
0
end_operator
begin_operator
start-flying a1 c1 c3 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 9
0
end_operator
begin_operator
start-flying a1 c1 c3 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 9
0
end_operator
begin_operator
start-flying a1 c1 c3 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 9
0
end_operator
begin_operator
start-flying a1 c1 c4 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 1 10
0
end_operator
begin_operator
start-flying a1 c1 c4 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 10
0
end_operator
begin_operator
start-flying a1 c1 c4 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 10
0
end_operator
begin_operator
start-flying a1 c1 c4 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 10
0
end_operator
begin_operator
start-flying a1 c1 c5 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 1 11
0
end_operator
begin_operator
start-flying a1 c1 c5 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 11
0
end_operator
begin_operator
start-flying a1 c1 c5 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 11
0
end_operator
begin_operator
start-flying a1 c1 c5 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 11
0
end_operator
begin_operator
start-flying a1 c2 c0 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 2 6
0
end_operator
begin_operator
start-flying a1 c2 c0 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 6
0
end_operator
begin_operator
start-flying a1 c2 c0 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 6
0
end_operator
begin_operator
start-flying a1 c2 c0 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 6
0
end_operator
begin_operator
start-flying a1 c2 c1 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 2 7
0
end_operator
begin_operator
start-flying a1 c2 c1 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 7
0
end_operator
begin_operator
start-flying a1 c2 c1 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 7
0
end_operator
begin_operator
start-flying a1 c2 c1 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 7
0
end_operator
begin_operator
start-flying a1 c2 c2 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 2 8
0
end_operator
begin_operator
start-flying a1 c2 c2 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 8
0
end_operator
begin_operator
start-flying a1 c2 c2 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 8
0
end_operator
begin_operator
start-flying a1 c2 c2 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 8
0
end_operator
begin_operator
start-flying a1 c2 c3 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 2 9
0
end_operator
begin_operator
start-flying a1 c2 c3 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 9
0
end_operator
begin_operator
start-flying a1 c2 c3 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 9
0
end_operator
begin_operator
start-flying a1 c2 c3 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 9
0
end_operator
begin_operator
start-flying a1 c2 c4 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 2 10
0
end_operator
begin_operator
start-flying a1 c2 c4 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 10
0
end_operator
begin_operator
start-flying a1 c2 c4 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 10
0
end_operator
begin_operator
start-flying a1 c2 c4 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 10
0
end_operator
begin_operator
start-flying a1 c2 c5 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 2 11
0
end_operator
begin_operator
start-flying a1 c2 c5 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 11
0
end_operator
begin_operator
start-flying a1 c2 c5 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 11
0
end_operator
begin_operator
start-flying a1 c2 c5 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 11
0
end_operator
begin_operator
start-flying a1 c3 c0 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 3 6
0
end_operator
begin_operator
start-flying a1 c3 c0 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 6
0
end_operator
begin_operator
start-flying a1 c3 c0 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 6
0
end_operator
begin_operator
start-flying a1 c3 c0 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 6
0
end_operator
begin_operator
start-flying a1 c3 c1 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 3 7
0
end_operator
begin_operator
start-flying a1 c3 c1 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 7
0
end_operator
begin_operator
start-flying a1 c3 c1 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 7
0
end_operator
begin_operator
start-flying a1 c3 c1 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 7
0
end_operator
begin_operator
start-flying a1 c3 c2 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 3 8
0
end_operator
begin_operator
start-flying a1 c3 c2 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 8
0
end_operator
begin_operator
start-flying a1 c3 c2 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 8
0
end_operator
begin_operator
start-flying a1 c3 c2 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 8
0
end_operator
begin_operator
start-flying a1 c3 c3 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 3 9
0
end_operator
begin_operator
start-flying a1 c3 c3 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 9
0
end_operator
begin_operator
start-flying a1 c3 c3 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 9
0
end_operator
begin_operator
start-flying a1 c3 c3 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 9
0
end_operator
begin_operator
start-flying a1 c3 c4 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 3 10
0
end_operator
begin_operator
start-flying a1 c3 c4 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 10
0
end_operator
begin_operator
start-flying a1 c3 c4 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 10
0
end_operator
begin_operator
start-flying a1 c3 c4 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 10
0
end_operator
begin_operator
start-flying a1 c3 c5 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 3 11
0
end_operator
begin_operator
start-flying a1 c3 c5 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 11
0
end_operator
begin_operator
start-flying a1 c3 c5 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 11
0
end_operator
begin_operator
start-flying a1 c3 c5 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 11
0
end_operator
begin_operator
start-flying a1 c4 c0 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 4 6
0
end_operator
begin_operator
start-flying a1 c4 c0 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 6
0
end_operator
begin_operator
start-flying a1 c4 c0 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 6
0
end_operator
begin_operator
start-flying a1 c4 c0 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 6
0
end_operator
begin_operator
start-flying a1 c4 c1 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 4 7
0
end_operator
begin_operator
start-flying a1 c4 c1 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 7
0
end_operator
begin_operator
start-flying a1 c4 c1 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 7
0
end_operator
begin_operator
start-flying a1 c4 c1 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 7
0
end_operator
begin_operator
start-flying a1 c4 c2 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 4 8
0
end_operator
begin_operator
start-flying a1 c4 c2 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 8
0
end_operator
begin_operator
start-flying a1 c4 c2 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 8
0
end_operator
begin_operator
start-flying a1 c4 c2 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 8
0
end_operator
begin_operator
start-flying a1 c4 c3 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 4 9
0
end_operator
begin_operator
start-flying a1 c4 c3 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 9
0
end_operator
begin_operator
start-flying a1 c4 c3 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 9
0
end_operator
begin_operator
start-flying a1 c4 c3 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 9
0
end_operator
begin_operator
start-flying a1 c4 c4 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 4 10
0
end_operator
begin_operator
start-flying a1 c4 c4 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 10
0
end_operator
begin_operator
start-flying a1 c4 c4 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 10
0
end_operator
begin_operator
start-flying a1 c4 c4 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 10
0
end_operator
begin_operator
start-flying a1 c4 c5 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 4 11
0
end_operator
begin_operator
start-flying a1 c4 c5 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 11
0
end_operator
begin_operator
start-flying a1 c4 c5 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 11
0
end_operator
begin_operator
start-flying a1 c4 c5 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 11
0
end_operator
begin_operator
start-flying a1 c5 c0 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 5 6
0
end_operator
begin_operator
start-flying a1 c5 c0 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 6
0
end_operator
begin_operator
start-flying a1 c5 c0 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 6
0
end_operator
begin_operator
start-flying a1 c5 c0 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 6
0
end_operator
begin_operator
start-flying a1 c5 c1 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 5 7
0
end_operator
begin_operator
start-flying a1 c5 c1 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 7
0
end_operator
begin_operator
start-flying a1 c5 c1 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 7
0
end_operator
begin_operator
start-flying a1 c5 c1 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 7
0
end_operator
begin_operator
start-flying a1 c5 c2 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 5 8
0
end_operator
begin_operator
start-flying a1 c5 c2 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 8
0
end_operator
begin_operator
start-flying a1 c5 c2 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 8
0
end_operator
begin_operator
start-flying a1 c5 c2 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 8
0
end_operator
begin_operator
start-flying a1 c5 c3 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 5 9
0
end_operator
begin_operator
start-flying a1 c5 c3 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 9
0
end_operator
begin_operator
start-flying a1 c5 c3 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 9
0
end_operator
begin_operator
start-flying a1 c5 c3 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 9
0
end_operator
begin_operator
start-flying a1 c5 c4 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 5 10
0
end_operator
begin_operator
start-flying a1 c5 c4 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 10
0
end_operator
begin_operator
start-flying a1 c5 c4 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 10
0
end_operator
begin_operator
start-flying a1 c5 c4 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 10
0
end_operator
begin_operator
start-flying a1 c5 c5 f1 f0
6
5 1
6 0
7 0
8 0
9 0
11 0
1
0 1 5 11
0
end_operator
begin_operator
start-flying a1 c5 c5 f2 f1
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 11
0
end_operator
begin_operator
start-flying a1 c5 c5 f3 f2
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 11
0
end_operator
begin_operator
start-flying a1 c5 c5 f4 f3
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 11
0
end_operator
begin_operator
start-refueling a0 c0 f0 f1
2
0 0
4 0
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c0 f1 f2
2
0 0
4 1
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c0 f2 f3
2
0 0
4 2
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c0 f3 f4
2
0 0
4 3
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c1 f0 f1
2
0 1
4 0
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c1 f1 f2
2
0 1
4 1
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c1 f2 f3
2
0 1
4 2
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c1 f3 f4
2
0 1
4 3
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c2 f0 f1
2
0 2
4 0
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c2 f1 f2
2
0 2
4 1
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c2 f2 f3
2
0 2
4 2
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c2 f3 f4
2
0 2
4 3
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c3 f0 f1
2
0 3
4 0
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c3 f1 f2
2
0 3
4 1
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c3 f2 f3
2
0 3
4 2
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c3 f3 f4
2
0 3
4 3
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c4 f0 f1
2
0 4
4 0
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c4 f1 f2
2
0 4
4 1
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c4 f2 f3
2
0 4
4 2
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c4 f3 f4
2
0 4
4 3
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c5 f0 f1
2
0 5
4 0
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c5 f1 f2
2
0 5
4 1
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c5 f2 f3
2
0 5
4 2
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a0 c5 f3 f4
2
0 5
4 3
1
0 10 0 1
0
end_operator
begin_operator
start-refueling a1 c0 f0 f1
2
1 0
5 0
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c0 f1 f2
2
1 0
5 1
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c0 f2 f3
2
1 0
5 2
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c0 f3 f4
2
1 0
5 3
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c1 f0 f1
2
1 1
5 0
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c1 f1 f2
2
1 1
5 1
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c1 f2 f3
2
1 1
5 2
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c1 f3 f4
2
1 1
5 3
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c2 f0 f1
2
1 2
5 0
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c2 f1 f2
2
1 2
5 1
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c2 f2 f3
2
1 2
5 2
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c2 f3 f4
2
1 2
5 3
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c3 f0 f1
2
1 3
5 0
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c3 f1 f2
2
1 3
5 1
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c3 f2 f3
2
1 3
5 2
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c3 f3 f4
2
1 3
5 3
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c4 f0 f1
2
1 4
5 0
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c4 f1 f2
2
1 4
5 1
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c4 f2 f3
2
1 4
5 2
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c4 f3 f4
2
1 4
5 3
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c5 f0 f1
2
1 5
5 0
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c5 f1 f2
2
1 5
5 1
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c5 f2 f3
2
1 5
5 2
1
0 11 0 1
0
end_operator
begin_operator
start-refueling a1 c5 f3 f4
2
1 5
5 3
1
0 11 0 1
0
end_operator
begin_operator
start-zooming a0 c0 c0 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 12
0
end_operator
begin_operator
start-zooming a0 c0 c0 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 12
0
end_operator
begin_operator
start-zooming a0 c0 c0 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 12
0
end_operator
begin_operator
start-zooming a0 c0 c1 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 13
0
end_operator
begin_operator
start-zooming a0 c0 c1 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 13
0
end_operator
begin_operator
start-zooming a0 c0 c1 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 13
0
end_operator
begin_operator
start-zooming a0 c0 c2 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 14
0
end_operator
begin_operator
start-zooming a0 c0 c2 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 14
0
end_operator
begin_operator
start-zooming a0 c0 c2 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 14
0
end_operator
begin_operator
start-zooming a0 c0 c3 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 15
0
end_operator
begin_operator
start-zooming a0 c0 c3 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 15
0
end_operator
begin_operator
start-zooming a0 c0 c3 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 15
0
end_operator
begin_operator
start-zooming a0 c0 c4 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 16
0
end_operator
begin_operator
start-zooming a0 c0 c4 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 16
0
end_operator
begin_operator
start-zooming a0 c0 c4 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 16
0
end_operator
begin_operator
start-zooming a0 c0 c5 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 0 17
0
end_operator
begin_operator
start-zooming a0 c0 c5 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 0 17
0
end_operator
begin_operator
start-zooming a0 c0 c5 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 0 17
0
end_operator
begin_operator
start-zooming a0 c1 c0 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 12
0
end_operator
begin_operator
start-zooming a0 c1 c0 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 12
0
end_operator
begin_operator
start-zooming a0 c1 c0 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 12
0
end_operator
begin_operator
start-zooming a0 c1 c1 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 13
0
end_operator
begin_operator
start-zooming a0 c1 c1 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 13
0
end_operator
begin_operator
start-zooming a0 c1 c1 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 13
0
end_operator
begin_operator
start-zooming a0 c1 c2 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 14
0
end_operator
begin_operator
start-zooming a0 c1 c2 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 14
0
end_operator
begin_operator
start-zooming a0 c1 c2 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 14
0
end_operator
begin_operator
start-zooming a0 c1 c3 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 15
0
end_operator
begin_operator
start-zooming a0 c1 c3 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 15
0
end_operator
begin_operator
start-zooming a0 c1 c3 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 15
0
end_operator
begin_operator
start-zooming a0 c1 c4 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 16
0
end_operator
begin_operator
start-zooming a0 c1 c4 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 16
0
end_operator
begin_operator
start-zooming a0 c1 c4 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 16
0
end_operator
begin_operator
start-zooming a0 c1 c5 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 1 17
0
end_operator
begin_operator
start-zooming a0 c1 c5 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 1 17
0
end_operator
begin_operator
start-zooming a0 c1 c5 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 1 17
0
end_operator
begin_operator
start-zooming a0 c2 c0 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 12
0
end_operator
begin_operator
start-zooming a0 c2 c0 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 12
0
end_operator
begin_operator
start-zooming a0 c2 c0 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 12
0
end_operator
begin_operator
start-zooming a0 c2 c1 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 13
0
end_operator
begin_operator
start-zooming a0 c2 c1 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 13
0
end_operator
begin_operator
start-zooming a0 c2 c1 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 13
0
end_operator
begin_operator
start-zooming a0 c2 c2 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 14
0
end_operator
begin_operator
start-zooming a0 c2 c2 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 14
0
end_operator
begin_operator
start-zooming a0 c2 c2 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 14
0
end_operator
begin_operator
start-zooming a0 c2 c3 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 15
0
end_operator
begin_operator
start-zooming a0 c2 c3 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 15
0
end_operator
begin_operator
start-zooming a0 c2 c3 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 15
0
end_operator
begin_operator
start-zooming a0 c2 c4 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 16
0
end_operator
begin_operator
start-zooming a0 c2 c4 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 16
0
end_operator
begin_operator
start-zooming a0 c2 c4 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 16
0
end_operator
begin_operator
start-zooming a0 c2 c5 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 2 17
0
end_operator
begin_operator
start-zooming a0 c2 c5 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 2 17
0
end_operator
begin_operator
start-zooming a0 c2 c5 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 2 17
0
end_operator
begin_operator
start-zooming a0 c3 c0 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 12
0
end_operator
begin_operator
start-zooming a0 c3 c0 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 12
0
end_operator
begin_operator
start-zooming a0 c3 c0 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 12
0
end_operator
begin_operator
start-zooming a0 c3 c1 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 13
0
end_operator
begin_operator
start-zooming a0 c3 c1 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 13
0
end_operator
begin_operator
start-zooming a0 c3 c1 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 13
0
end_operator
begin_operator
start-zooming a0 c3 c2 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 14
0
end_operator
begin_operator
start-zooming a0 c3 c2 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 14
0
end_operator
begin_operator
start-zooming a0 c3 c2 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 14
0
end_operator
begin_operator
start-zooming a0 c3 c3 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 15
0
end_operator
begin_operator
start-zooming a0 c3 c3 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 15
0
end_operator
begin_operator
start-zooming a0 c3 c3 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 15
0
end_operator
begin_operator
start-zooming a0 c3 c4 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 16
0
end_operator
begin_operator
start-zooming a0 c3 c4 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 16
0
end_operator
begin_operator
start-zooming a0 c3 c4 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 16
0
end_operator
begin_operator
start-zooming a0 c3 c5 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 3 17
0
end_operator
begin_operator
start-zooming a0 c3 c5 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 3 17
0
end_operator
begin_operator
start-zooming a0 c3 c5 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 3 17
0
end_operator
begin_operator
start-zooming a0 c4 c0 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 12
0
end_operator
begin_operator
start-zooming a0 c4 c0 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 12
0
end_operator
begin_operator
start-zooming a0 c4 c0 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 12
0
end_operator
begin_operator
start-zooming a0 c4 c1 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 13
0
end_operator
begin_operator
start-zooming a0 c4 c1 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 13
0
end_operator
begin_operator
start-zooming a0 c4 c1 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 13
0
end_operator
begin_operator
start-zooming a0 c4 c2 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 14
0
end_operator
begin_operator
start-zooming a0 c4 c2 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 14
0
end_operator
begin_operator
start-zooming a0 c4 c2 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 14
0
end_operator
begin_operator
start-zooming a0 c4 c3 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 15
0
end_operator
begin_operator
start-zooming a0 c4 c3 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 15
0
end_operator
begin_operator
start-zooming a0 c4 c3 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 15
0
end_operator
begin_operator
start-zooming a0 c4 c4 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 16
0
end_operator
begin_operator
start-zooming a0 c4 c4 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 16
0
end_operator
begin_operator
start-zooming a0 c4 c4 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 16
0
end_operator
begin_operator
start-zooming a0 c4 c5 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 4 17
0
end_operator
begin_operator
start-zooming a0 c4 c5 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 4 17
0
end_operator
begin_operator
start-zooming a0 c4 c5 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 4 17
0
end_operator
begin_operator
start-zooming a0 c5 c0 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 12
0
end_operator
begin_operator
start-zooming a0 c5 c0 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 12
0
end_operator
begin_operator
start-zooming a0 c5 c0 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 12
0
end_operator
begin_operator
start-zooming a0 c5 c1 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 13
0
end_operator
begin_operator
start-zooming a0 c5 c1 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 13
0
end_operator
begin_operator
start-zooming a0 c5 c1 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 13
0
end_operator
begin_operator
start-zooming a0 c5 c2 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 14
0
end_operator
begin_operator
start-zooming a0 c5 c2 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 14
0
end_operator
begin_operator
start-zooming a0 c5 c2 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 14
0
end_operator
begin_operator
start-zooming a0 c5 c3 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 15
0
end_operator
begin_operator
start-zooming a0 c5 c3 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 15
0
end_operator
begin_operator
start-zooming a0 c5 c3 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 15
0
end_operator
begin_operator
start-zooming a0 c5 c4 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 16
0
end_operator
begin_operator
start-zooming a0 c5 c4 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 16
0
end_operator
begin_operator
start-zooming a0 c5 c4 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 16
0
end_operator
begin_operator
start-zooming a0 c5 c5 f2 f1 f0
6
4 2
6 0
7 0
8 0
9 0
10 0
1
0 0 5 17
0
end_operator
begin_operator
start-zooming a0 c5 c5 f3 f2 f1
6
4 3
6 0
7 0
8 0
9 0
10 0
1
0 0 5 17
0
end_operator
begin_operator
start-zooming a0 c5 c5 f4 f3 f2
6
4 4
6 0
7 0
8 0
9 0
10 0
1
0 0 5 17
0
end_operator
begin_operator
start-zooming a1 c0 c0 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 12
0
end_operator
begin_operator
start-zooming a1 c0 c0 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 12
0
end_operator
begin_operator
start-zooming a1 c0 c0 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 12
0
end_operator
begin_operator
start-zooming a1 c0 c1 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 13
0
end_operator
begin_operator
start-zooming a1 c0 c1 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 13
0
end_operator
begin_operator
start-zooming a1 c0 c1 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 13
0
end_operator
begin_operator
start-zooming a1 c0 c2 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 14
0
end_operator
begin_operator
start-zooming a1 c0 c2 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 14
0
end_operator
begin_operator
start-zooming a1 c0 c2 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 14
0
end_operator
begin_operator
start-zooming a1 c0 c3 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 15
0
end_operator
begin_operator
start-zooming a1 c0 c3 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 15
0
end_operator
begin_operator
start-zooming a1 c0 c3 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 15
0
end_operator
begin_operator
start-zooming a1 c0 c4 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 16
0
end_operator
begin_operator
start-zooming a1 c0 c4 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 16
0
end_operator
begin_operator
start-zooming a1 c0 c4 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 16
0
end_operator
begin_operator
start-zooming a1 c0 c5 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 0 17
0
end_operator
begin_operator
start-zooming a1 c0 c5 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 0 17
0
end_operator
begin_operator
start-zooming a1 c0 c5 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 0 17
0
end_operator
begin_operator
start-zooming a1 c1 c0 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 12
0
end_operator
begin_operator
start-zooming a1 c1 c0 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 12
0
end_operator
begin_operator
start-zooming a1 c1 c0 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 12
0
end_operator
begin_operator
start-zooming a1 c1 c1 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 13
0
end_operator
begin_operator
start-zooming a1 c1 c1 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 13
0
end_operator
begin_operator
start-zooming a1 c1 c1 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 13
0
end_operator
begin_operator
start-zooming a1 c1 c2 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 14
0
end_operator
begin_operator
start-zooming a1 c1 c2 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 14
0
end_operator
begin_operator
start-zooming a1 c1 c2 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 14
0
end_operator
begin_operator
start-zooming a1 c1 c3 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 15
0
end_operator
begin_operator
start-zooming a1 c1 c3 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 15
0
end_operator
begin_operator
start-zooming a1 c1 c3 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 15
0
end_operator
begin_operator
start-zooming a1 c1 c4 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 16
0
end_operator
begin_operator
start-zooming a1 c1 c4 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 16
0
end_operator
begin_operator
start-zooming a1 c1 c4 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 16
0
end_operator
begin_operator
start-zooming a1 c1 c5 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 1 17
0
end_operator
begin_operator
start-zooming a1 c1 c5 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 1 17
0
end_operator
begin_operator
start-zooming a1 c1 c5 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 1 17
0
end_operator
begin_operator
start-zooming a1 c2 c0 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 12
0
end_operator
begin_operator
start-zooming a1 c2 c0 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 12
0
end_operator
begin_operator
start-zooming a1 c2 c0 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 12
0
end_operator
begin_operator
start-zooming a1 c2 c1 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 13
0
end_operator
begin_operator
start-zooming a1 c2 c1 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 13
0
end_operator
begin_operator
start-zooming a1 c2 c1 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 13
0
end_operator
begin_operator
start-zooming a1 c2 c2 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 14
0
end_operator
begin_operator
start-zooming a1 c2 c2 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 14
0
end_operator
begin_operator
start-zooming a1 c2 c2 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 14
0
end_operator
begin_operator
start-zooming a1 c2 c3 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 15
0
end_operator
begin_operator
start-zooming a1 c2 c3 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 15
0
end_operator
begin_operator
start-zooming a1 c2 c3 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 15
0
end_operator
begin_operator
start-zooming a1 c2 c4 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 16
0
end_operator
begin_operator
start-zooming a1 c2 c4 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 16
0
end_operator
begin_operator
start-zooming a1 c2 c4 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 16
0
end_operator
begin_operator
start-zooming a1 c2 c5 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 2 17
0
end_operator
begin_operator
start-zooming a1 c2 c5 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 2 17
0
end_operator
begin_operator
start-zooming a1 c2 c5 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 2 17
0
end_operator
begin_operator
start-zooming a1 c3 c0 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 12
0
end_operator
begin_operator
start-zooming a1 c3 c0 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 12
0
end_operator
begin_operator
start-zooming a1 c3 c0 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 12
0
end_operator
begin_operator
start-zooming a1 c3 c1 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 13
0
end_operator
begin_operator
start-zooming a1 c3 c1 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 13
0
end_operator
begin_operator
start-zooming a1 c3 c1 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 13
0
end_operator
begin_operator
start-zooming a1 c3 c2 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 14
0
end_operator
begin_operator
start-zooming a1 c3 c2 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 14
0
end_operator
begin_operator
start-zooming a1 c3 c2 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 14
0
end_operator
begin_operator
start-zooming a1 c3 c3 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 15
0
end_operator
begin_operator
start-zooming a1 c3 c3 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 15
0
end_operator
begin_operator
start-zooming a1 c3 c3 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 15
0
end_operator
begin_operator
start-zooming a1 c3 c4 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 16
0
end_operator
begin_operator
start-zooming a1 c3 c4 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 16
0
end_operator
begin_operator
start-zooming a1 c3 c4 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 16
0
end_operator
begin_operator
start-zooming a1 c3 c5 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 3 17
0
end_operator
begin_operator
start-zooming a1 c3 c5 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 3 17
0
end_operator
begin_operator
start-zooming a1 c3 c5 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 3 17
0
end_operator
begin_operator
start-zooming a1 c4 c0 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 12
0
end_operator
begin_operator
start-zooming a1 c4 c0 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 12
0
end_operator
begin_operator
start-zooming a1 c4 c0 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 12
0
end_operator
begin_operator
start-zooming a1 c4 c1 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 13
0
end_operator
begin_operator
start-zooming a1 c4 c1 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 13
0
end_operator
begin_operator
start-zooming a1 c4 c1 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 13
0
end_operator
begin_operator
start-zooming a1 c4 c2 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 14
0
end_operator
begin_operator
start-zooming a1 c4 c2 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 14
0
end_operator
begin_operator
start-zooming a1 c4 c2 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 14
0
end_operator
begin_operator
start-zooming a1 c4 c3 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 15
0
end_operator
begin_operator
start-zooming a1 c4 c3 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 15
0
end_operator
begin_operator
start-zooming a1 c4 c3 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 15
0
end_operator
begin_operator
start-zooming a1 c4 c4 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 16
0
end_operator
begin_operator
start-zooming a1 c4 c4 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 16
0
end_operator
begin_operator
start-zooming a1 c4 c4 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 16
0
end_operator
begin_operator
start-zooming a1 c4 c5 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 4 17
0
end_operator
begin_operator
start-zooming a1 c4 c5 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 4 17
0
end_operator
begin_operator
start-zooming a1 c4 c5 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 4 17
0
end_operator
begin_operator
start-zooming a1 c5 c0 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 12
0
end_operator
begin_operator
start-zooming a1 c5 c0 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 12
0
end_operator
begin_operator
start-zooming a1 c5 c0 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 12
0
end_operator
begin_operator
start-zooming a1 c5 c1 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 13
0
end_operator
begin_operator
start-zooming a1 c5 c1 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 13
0
end_operator
begin_operator
start-zooming a1 c5 c1 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 13
0
end_operator
begin_operator
start-zooming a1 c5 c2 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 14
0
end_operator
begin_operator
start-zooming a1 c5 c2 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 14
0
end_operator
begin_operator
start-zooming a1 c5 c2 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 14
0
end_operator
begin_operator
start-zooming a1 c5 c3 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 15
0
end_operator
begin_operator
start-zooming a1 c5 c3 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 15
0
end_operator
begin_operator
start-zooming a1 c5 c3 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 15
0
end_operator
begin_operator
start-zooming a1 c5 c4 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 16
0
end_operator
begin_operator
start-zooming a1 c5 c4 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 16
0
end_operator
begin_operator
start-zooming a1 c5 c4 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 16
0
end_operator
begin_operator
start-zooming a1 c5 c5 f2 f1 f0
6
5 2
6 0
7 0
8 0
9 0
11 0
1
0 1 5 17
0
end_operator
begin_operator
start-zooming a1 c5 c5 f3 f2 f1
6
5 3
6 0
7 0
8 0
9 0
11 0
1
0 1 5 17
0
end_operator
begin_operator
start-zooming a1 c5 c5 f4 f3 f2
6
5 4
6 0
7 0
8 0
9 0
11 0
1
0 1 5 17
0
end_operator
0
