begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
4
Atom car-at(n0)
Atom car-at(n1)
Atom car-at(n2)
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
Atom free(ng)
NegatedAtom free(ng)
end_variable
begin_variable
var4
-1
6
Atom loaded(t1)
Atom tire-at(t1, n0)
Atom tire-at(t1, n1)
Atom tire-at(t1, n2)
Atom tire-at(t1, ng)
<none of those>
end_variable
begin_variable
var5
-1
6
Atom loaded(t2)
Atom tire-at(t2, n0)
Atom tire-at(t2, n1)
Atom tire-at(t2, n2)
Atom tire-at(t2, ng)
<none of those>
end_variable
begin_variable
var6
-1
6
Atom loaded(t3)
Atom tire-at(t3, n0)
Atom tire-at(t3, n1)
Atom tire-at(t3, n2)
Atom tire-at(t3, ng)
<none of those>
end_variable
begin_variable
var7
-1
6
Atom loaded(t4)
Atom tire-at(t4, n0)
Atom tire-at(t4, n1)
Atom tire-at(t4, n2)
Atom tire-at(t4, ng)
<none of those>
end_variable
begin_variable
var8
-1
2
Atom not-flattire()
NegatedAtom not-flattire()
end_variable
begin_variable
var9
-1
4
Atom truck-at(n0)
Atom truck-at(n1)
Atom truck-at(n2)
Atom truck-at(ng)
end_variable
6
begin_mutex_group
4
0 0
0 1
0 2
0 3
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
5
6 0
6 1
6 2
6 3
6 4
end_mutex_group
begin_mutex_group
5
7 0
7 1
7 2
7 3
7 4
end_mutex_group
begin_mutex_group
4
9 0
9 1
9 2
9 3
end_mutex_group
begin_state
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
0 3
end_goal
64
begin_operator
droptire n0 t1
1
9 0
1
0 4 0 1
0
end_operator
begin_operator
droptire n0 t2
1
9 0
1
0 5 0 1
0
end_operator
begin_operator
droptire n0 t3
1
9 0
1
0 6 0 1
0
end_operator
begin_operator
droptire n0 t4
1
9 0
1
0 7 0 1
0
end_operator
begin_operator
droptire n1 t1
1
9 1
1
0 4 0 2
0
end_operator
begin_operator
droptire n1 t2
1
9 1
1
0 5 0 2
0
end_operator
begin_operator
droptire n1 t3
1
9 1
1
0 6 0 2
0
end_operator
begin_operator
droptire n1 t4
1
9 1
1
0 7 0 2
0
end_operator
begin_operator
droptire n2 t1
1
9 2
1
0 4 0 3
0
end_operator
begin_operator
droptire n2 t2
1
9 2
1
0 5 0 3
0
end_operator
begin_operator
droptire n2 t3
1
9 2
1
0 6 0 3
0
end_operator
begin_operator
droptire n2 t4
1
9 2
1
0 7 0 3
0
end_operator
begin_operator
droptire ng t1
1
9 3
1
0 4 0 4
0
end_operator
begin_operator
droptire ng t2
1
9 3
1
0 5 0 4
0
end_operator
begin_operator
droptire ng t3
1
9 3
1
0 6 0 4
0
end_operator
begin_operator
droptire ng t4
1
9 3
1
0 7 0 4
0
end_operator
begin_operator
fix n0 t1
1
0 0
2
0 4 1 5
0 8 1 0
0
end_operator
begin_operator
fix n0 t2
1
0 0
2
0 5 1 5
0 8 1 0
0
end_operator
begin_operator
fix n0 t3
1
0 0
2
0 6 1 5
0 8 1 0
0
end_operator
begin_operator
fix n0 t4
1
0 0
2
0 7 1 5
0 8 1 0
0
end_operator
begin_operator
fix n1 t1
1
0 1
2
0 4 2 5
0 8 1 0
0
end_operator
begin_operator
fix n1 t2
1
0 1
2
0 5 2 5
0 8 1 0
0
end_operator
begin_operator
fix n1 t3
1
0 1
2
0 6 2 5
0 8 1 0
0
end_operator
begin_operator
fix n1 t4
1
0 1
2
0 7 2 5
0 8 1 0
0
end_operator
begin_operator
fix n2 t1
1
0 2
2
0 4 3 5
0 8 1 0
0
end_operator
begin_operator
fix n2 t2
1
0 2
2
0 5 3 5
0 8 1 0
0
end_operator
begin_operator
fix n2 t3
1
0 2
2
0 6 3 5
0 8 1 0
0
end_operator
begin_operator
fix n2 t4
1
0 2
2
0 7 3 5
0 8 1 0
0
end_operator
begin_operator
fix ng t1
1
0 3
2
0 4 4 5
0 8 1 0
0
end_operator
begin_operator
fix ng t2
1
0 3
2
0 5 4 5
0 8 1 0
0
end_operator
begin_operator
fix ng t3
1
0 3
2
0 6 4 5
0 8 1 0
0
end_operator
begin_operator
fix ng t4
1
0 3
2
0 7 4 5
0 8 1 0
0
end_operator
begin_operator
loadtire n0 t1
1
9 0
1
0 4 1 0
0
end_operator
begin_operator
loadtire n0 t2
1
9 0
1
0 5 1 0
0
end_operator
begin_operator
loadtire n0 t3
1
9 0
1
0 6 1 0
0
end_operator
begin_operator
loadtire n0 t4
1
9 0
1
0 7 1 0
0
end_operator
begin_operator
loadtire n1 t1
1
9 1
1
0 4 2 0
0
end_operator
begin_operator
loadtire n1 t2
1
9 1
1
0 5 2 0
0
end_operator
begin_operator
loadtire n1 t3
1
9 1
1
0 6 2 0
0
end_operator
begin_operator
loadtire n1 t4
1
9 1
1
0 7 2 0
0
end_operator
begin_operator
loadtire n2 t1
1
9 2
1
0 4 3 0
0
end_operator
begin_operator
loadtire n2 t2
1
9 2
1
0 5 3 0
0
end_operator
begin_operator
loadtire n2 t3
1
9 2
1
0 6 3 0
0
end_operator
begin_operator
loadtire n2 t4
1
9 2
1
0 7 3 0
0
end_operator
begin_operator
loadtire ng t1
1
9 3
1
0 4 4 0
0
end_operator
begin_operator
loadtire ng t2
1
9 3
1
0 5 4 0
0
end_operator
begin_operator
loadtire ng t3
1
9 3
1
0 6 4 0
0
end_operator
begin_operator
loadtire ng t4
1
9 3
1
0 7 4 0
0
end_operator
begin_operator
move-car-normal n2 ng
1
8 0
3
0 0 2 3
0 2 -1 0
0 3 0 1
0
end_operator
begin_operator
move-car-normal ng n2
1
8 0
3
0 0 3 2
0 2 0 1
0 3 -1 0
0
end_operator
begin_operator
move-car-spiky n0 n1
0
3
0 0 0 1
0 1 0 1
0 8 0 1
0
end_operator
begin_operator
move-car-spiky n0 n1
1
8 0
2
0 0 0 1
0 1 0 1
0
end_operator
begin_operator
move-car-spiky n1 n2
0
4
0 0 1 2
0 1 -1 0
0 2 0 1
0 8 0 1
0
end_operator
begin_operator
move-car-spiky n1 n2
1
8 0
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
0 8 0 1
0
end_operator
begin_operator
move-car-spiky n2 n1
1
8 0
3
0 0 2 1
0 1 0 1
0 2 -1 0
0
end_operator
begin_operator
move-car-spiky-to-initial n1 n0
0
3
0 0 1 0
0 1 -1 0
0 8 0 1
0
end_operator
begin_operator
move-car-spiky-to-initial n1 n0
1
8 0
2
0 0 1 0
0 1 -1 0
0
end_operator
begin_operator
move-truck n0 n1
0
2
0 1 0 1
0 9 0 1
0
end_operator
begin_operator
move-truck n1 n2
0
3
0 1 -1 0
0 2 0 1
0 9 1 2
0
end_operator
begin_operator
move-truck n2 n1
0
3
0 1 0 1
0 2 -1 0
0 9 2 1
0
end_operator
begin_operator
move-truck n2 ng
0
3
0 2 -1 0
0 3 0 1
0 9 2 3
0
end_operator
begin_operator
move-truck ng n2
0
3
0 2 0 1
0 3 -1 0
0 9 3 2
0
end_operator
begin_operator
move-truck-to-initial n1 n0
0
2
0 1 -1 0
0 9 1 0
0
end_operator
0
