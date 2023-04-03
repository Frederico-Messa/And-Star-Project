begin_version
3
end_version
begin_metric
0
end_metric
11
begin_variable
var0
-1
5
Atom car-at(n0)
Atom car-at(n1)
Atom car-at(n2)
Atom car-at(n3)
Atom car-at(ng)
end_variable
begin_variable
var1
-1
2
Atom free(n1)
NegatedAtom free(n1)
end_variable
begin_variable
var2
-1
2
Atom free(n2)
NegatedAtom free(n2)
end_variable
begin_variable
var3
-1
2
Atom free(n3)
NegatedAtom free(n3)
end_variable
begin_variable
var4
-1
2
Atom free(ng)
NegatedAtom free(ng)
end_variable
begin_variable
var5
-1
7
Atom loaded(t1)
Atom tire-at(t1, n0)
Atom tire-at(t1, n1)
Atom tire-at(t1, n2)
Atom tire-at(t1, n3)
Atom tire-at(t1, ng)
<none of those>
end_variable
begin_variable
var6
-1
7
Atom loaded(t2)
Atom tire-at(t2, n0)
Atom tire-at(t2, n1)
Atom tire-at(t2, n2)
Atom tire-at(t2, n3)
Atom tire-at(t2, ng)
<none of those>
end_variable
begin_variable
var7
-1
7
Atom loaded(t3)
Atom tire-at(t3, n0)
Atom tire-at(t3, n1)
Atom tire-at(t3, n2)
Atom tire-at(t3, n3)
Atom tire-at(t3, ng)
<none of those>
end_variable
begin_variable
var8
-1
7
Atom loaded(t4)
Atom tire-at(t4, n0)
Atom tire-at(t4, n1)
Atom tire-at(t4, n2)
Atom tire-at(t4, n3)
Atom tire-at(t4, ng)
<none of those>
end_variable
begin_variable
var9
-1
2
Atom not-flattire()
NegatedAtom not-flattire()
end_variable
begin_variable
var10
-1
5
Atom truck-at(n0)
Atom truck-at(n1)
Atom truck-at(n2)
Atom truck-at(n3)
Atom truck-at(ng)
end_variable
6
begin_mutex_group
5
0 0
0 1
0 2
0 3
0 4
end_mutex_group
begin_mutex_group
6
5 0
5 1
5 2
5 3
5 4
5 5
end_mutex_group
begin_mutex_group
6
6 0
6 1
6 2
6 3
6 4
6 5
end_mutex_group
begin_mutex_group
6
7 0
7 1
7 2
7 3
7 4
7 5
end_mutex_group
begin_mutex_group
6
8 0
8 1
8 2
8 3
8 4
8 5
end_mutex_group
begin_mutex_group
5
10 0
10 1
10 2
10 3
10 4
end_mutex_group
begin_state
0
0
0
0
0
1
1
1
1
0
0
end_state
begin_goal
1
0 4
end_goal
78
begin_operator
droptire n0 t1
1
10 0
1
0 5 0 1
0
end_operator
begin_operator
droptire n0 t2
1
10 0
1
0 6 0 1
0
end_operator
begin_operator
droptire n0 t3
1
10 0
1
0 7 0 1
0
end_operator
begin_operator
droptire n0 t4
1
10 0
1
0 8 0 1
0
end_operator
begin_operator
droptire n1 t1
1
10 1
1
0 5 0 2
0
end_operator
begin_operator
droptire n1 t2
1
10 1
1
0 6 0 2
0
end_operator
begin_operator
droptire n1 t3
1
10 1
1
0 7 0 2
0
end_operator
begin_operator
droptire n1 t4
1
10 1
1
0 8 0 2
0
end_operator
begin_operator
droptire n2 t1
1
10 2
1
0 5 0 3
0
end_operator
begin_operator
droptire n2 t2
1
10 2
1
0 6 0 3
0
end_operator
begin_operator
droptire n2 t3
1
10 2
1
0 7 0 3
0
end_operator
begin_operator
droptire n2 t4
1
10 2
1
0 8 0 3
0
end_operator
begin_operator
droptire n3 t1
1
10 3
1
0 5 0 4
0
end_operator
begin_operator
droptire n3 t2
1
10 3
1
0 6 0 4
0
end_operator
begin_operator
droptire n3 t3
1
10 3
1
0 7 0 4
0
end_operator
begin_operator
droptire n3 t4
1
10 3
1
0 8 0 4
0
end_operator
begin_operator
droptire ng t1
1
10 4
1
0 5 0 5
0
end_operator
begin_operator
droptire ng t2
1
10 4
1
0 6 0 5
0
end_operator
begin_operator
droptire ng t3
1
10 4
1
0 7 0 5
0
end_operator
begin_operator
droptire ng t4
1
10 4
1
0 8 0 5
0
end_operator
begin_operator
fix n0 t1
1
0 0
2
0 5 1 6
0 9 1 0
0
end_operator
begin_operator
fix n0 t2
1
0 0
2
0 6 1 6
0 9 1 0
0
end_operator
begin_operator
fix n0 t3
1
0 0
2
0 7 1 6
0 9 1 0
0
end_operator
begin_operator
fix n0 t4
1
0 0
2
0 8 1 6
0 9 1 0
0
end_operator
begin_operator
fix n1 t1
1
0 1
2
0 5 2 6
0 9 1 0
0
end_operator
begin_operator
fix n1 t2
1
0 1
2
0 6 2 6
0 9 1 0
0
end_operator
begin_operator
fix n1 t3
1
0 1
2
0 7 2 6
0 9 1 0
0
end_operator
begin_operator
fix n1 t4
1
0 1
2
0 8 2 6
0 9 1 0
0
end_operator
begin_operator
fix n2 t1
1
0 2
2
0 5 3 6
0 9 1 0
0
end_operator
begin_operator
fix n2 t2
1
0 2
2
0 6 3 6
0 9 1 0
0
end_operator
begin_operator
fix n2 t3
1
0 2
2
0 7 3 6
0 9 1 0
0
end_operator
begin_operator
fix n2 t4
1
0 2
2
0 8 3 6
0 9 1 0
0
end_operator
begin_operator
fix n3 t1
1
0 3
2
0 5 4 6
0 9 1 0
0
end_operator
begin_operator
fix n3 t2
1
0 3
2
0 6 4 6
0 9 1 0
0
end_operator
begin_operator
fix n3 t3
1
0 3
2
0 7 4 6
0 9 1 0
0
end_operator
begin_operator
fix n3 t4
1
0 3
2
0 8 4 6
0 9 1 0
0
end_operator
begin_operator
fix ng t1
1
0 4
2
0 5 5 6
0 9 1 0
0
end_operator
begin_operator
fix ng t2
1
0 4
2
0 6 5 6
0 9 1 0
0
end_operator
begin_operator
fix ng t3
1
0 4
2
0 7 5 6
0 9 1 0
0
end_operator
begin_operator
fix ng t4
1
0 4
2
0 8 5 6
0 9 1 0
0
end_operator
begin_operator
loadtire n0 t1
1
10 0
1
0 5 1 0
0
end_operator
begin_operator
loadtire n0 t2
1
10 0
1
0 6 1 0
0
end_operator
begin_operator
loadtire n0 t3
1
10 0
1
0 7 1 0
0
end_operator
begin_operator
loadtire n0 t4
1
10 0
1
0 8 1 0
0
end_operator
begin_operator
loadtire n1 t1
1
10 1
1
0 5 2 0
0
end_operator
begin_operator
loadtire n1 t2
1
10 1
1
0 6 2 0
0
end_operator
begin_operator
loadtire n1 t3
1
10 1
1
0 7 2 0
0
end_operator
begin_operator
loadtire n1 t4
1
10 1
1
0 8 2 0
0
end_operator
begin_operator
loadtire n2 t1
1
10 2
1
0 5 3 0
0
end_operator
begin_operator
loadtire n2 t2
1
10 2
1
0 6 3 0
0
end_operator
begin_operator
loadtire n2 t3
1
10 2
1
0 7 3 0
0
end_operator
begin_operator
loadtire n2 t4
1
10 2
1
0 8 3 0
0
end_operator
begin_operator
loadtire n3 t1
1
10 3
1
0 5 4 0
0
end_operator
begin_operator
loadtire n3 t2
1
10 3
1
0 6 4 0
0
end_operator
begin_operator
loadtire n3 t3
1
10 3
1
0 7 4 0
0
end_operator
begin_operator
loadtire n3 t4
1
10 3
1
0 8 4 0
0
end_operator
begin_operator
loadtire ng t1
1
10 4
1
0 5 5 0
0
end_operator
begin_operator
loadtire ng t2
1
10 4
1
0 6 5 0
0
end_operator
begin_operator
loadtire ng t3
1
10 4
1
0 7 5 0
0
end_operator
begin_operator
loadtire ng t4
1
10 4
1
0 8 5 0
0
end_operator
begin_operator
move-car-normal n0 n1
1
9 0
2
0 0 0 1
0 1 0 1
0
end_operator
begin_operator
move-car-normal n2 n3
1
9 0
3
0 0 2 3
0 2 -1 0
0 3 0 1
0
end_operator
begin_operator
move-car-normal n3 n2
1
9 0
3
0 0 3 2
0 2 0 1
0 3 -1 0
0
end_operator
begin_operator
move-car-normal n3 ng
1
9 0
3
0 0 3 4
0 3 -1 0
0 4 0 1
0
end_operator
begin_operator
move-car-normal ng n3
1
9 0
3
0 0 4 3
0 3 0 1
0 4 -1 0
0
end_operator
begin_operator
move-car-normal-to-initial n1 n0
1
9 0
2
0 0 1 0
0 1 -1 0
0
end_operator
begin_operator
move-car-spiky n1 n2
0
4
0 0 1 2
0 1 -1 0
0 2 0 1
0 9 0 1
0
end_operator
begin_operator
move-car-spiky n1 n2
1
9 0
3
0 0 1 2
0 1 -1 0
0 2 0 1
0
end_operator
begin_operator
move-car-spiky n2 n1
0
4
0 0 2 1
0 1 0 1
0 2 -1 0
0 9 0 1
0
end_operator
begin_operator
move-car-spiky n2 n1
1
9 0
3
0 0 2 1
0 1 0 1
0 2 -1 0
0
end_operator
begin_operator
move-truck n0 n1
0
2
0 1 0 1
0 10 0 1
0
end_operator
begin_operator
move-truck n1 n2
0
3
0 1 -1 0
0 2 0 1
0 10 1 2
0
end_operator
begin_operator
move-truck n2 n1
0
3
0 1 0 1
0 2 -1 0
0 10 2 1
0
end_operator
begin_operator
move-truck n2 n3
0
3
0 2 -1 0
0 3 0 1
0 10 2 3
0
end_operator
begin_operator
move-truck n3 n2
0
3
0 2 0 1
0 3 -1 0
0 10 3 2
0
end_operator
begin_operator
move-truck n3 ng
0
3
0 3 -1 0
0 4 0 1
0 10 3 4
0
end_operator
begin_operator
move-truck ng n3
0
3
0 3 0 1
0 4 -1 0
0 10 4 3
0
end_operator
begin_operator
move-truck-to-initial n1 n0
0
2
0 1 -1 0
0 10 1 0
0
end_operator
0
