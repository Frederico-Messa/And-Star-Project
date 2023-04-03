begin_version
3
end_version
begin_metric
0
end_metric
18
begin_variable
var0
-1
2
Atom fire(l2)
Atom nfire(l2)
end_variable
begin_variable
var1
-1
7
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l3)
Atom fire-unit-at(f1, l4)
Atom fire-unit-at(f1, l5)
Atom fire-unit-at(f1, l6)
Atom fire-unit-at(f1, l7)
end_variable
begin_variable
var2
-1
7
Atom fire-unit-at(f2, l1)
Atom fire-unit-at(f2, l2)
Atom fire-unit-at(f2, l3)
Atom fire-unit-at(f2, l4)
Atom fire-unit-at(f2, l5)
Atom fire-unit-at(f2, l6)
Atom fire-unit-at(f2, l7)
end_variable
begin_variable
var3
-1
7
Atom fire-unit-at(f3, l1)
Atom fire-unit-at(f3, l2)
Atom fire-unit-at(f3, l3)
Atom fire-unit-at(f3, l4)
Atom fire-unit-at(f3, l5)
Atom fire-unit-at(f3, l6)
Atom fire-unit-at(f3, l7)
end_variable
begin_variable
var4
-1
7
Atom fire-unit-at(f4, l1)
Atom fire-unit-at(f4, l2)
Atom fire-unit-at(f4, l3)
Atom fire-unit-at(f4, l4)
Atom fire-unit-at(f4, l5)
Atom fire-unit-at(f4, l6)
Atom fire-unit-at(f4, l7)
end_variable
begin_variable
var5
-1
7
Atom fire-unit-at(f5, l1)
Atom fire-unit-at(f5, l2)
Atom fire-unit-at(f5, l3)
Atom fire-unit-at(f5, l4)
Atom fire-unit-at(f5, l5)
Atom fire-unit-at(f5, l6)
Atom fire-unit-at(f5, l7)
end_variable
begin_variable
var6
-1
8
Atom have-victim-in-unit(v1, m1)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
Atom victim-at(v1, l5)
Atom victim-at(v1, l6)
Atom victim-at(v1, l7)
end_variable
begin_variable
var7
-1
8
Atom have-victim-in-unit(v2, m1)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
Atom victim-at(v2, l3)
Atom victim-at(v2, l4)
Atom victim-at(v2, l5)
Atom victim-at(v2, l6)
Atom victim-at(v2, l7)
end_variable
begin_variable
var8
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var9
-1
2
Atom have-water(f2)
NegatedAtom have-water(f2)
end_variable
begin_variable
var10
-1
2
Atom have-water(f3)
NegatedAtom have-water(f3)
end_variable
begin_variable
var11
-1
2
Atom have-water(f4)
NegatedAtom have-water(f4)
end_variable
begin_variable
var12
-1
2
Atom have-water(f5)
NegatedAtom have-water(f5)
end_variable
begin_variable
var13
-1
7
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
Atom medical-unit-at(m1, l4)
Atom medical-unit-at(m1, l5)
Atom medical-unit-at(m1, l6)
Atom medical-unit-at(m1, l7)
end_variable
begin_variable
var14
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var15
-1
2
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
end_variable
begin_variable
var16
-1
2
Atom victim-status(v2, dying)
NegatedAtom victim-status(v2, dying)
end_variable
begin_variable
var17
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
9
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
7
1 0
1 1
1 2
1 3
1 4
1 5
1 6
end_mutex_group
begin_mutex_group
7
2 0
2 1
2 2
2 3
2 4
2 5
2 6
end_mutex_group
begin_mutex_group
7
3 0
3 1
3 2
3 3
3 4
3 5
3 6
end_mutex_group
begin_mutex_group
7
4 0
4 1
4 2
4 3
4 4
4 5
4 6
end_mutex_group
begin_mutex_group
7
5 0
5 1
5 2
5 3
5 4
5 5
5 6
end_mutex_group
begin_mutex_group
8
6 0
6 1
6 2
6 3
6 4
6 5
6 6
6 7
end_mutex_group
begin_mutex_group
8
7 0
7 1
7 2
7 3
7 4
7 5
7 6
7 7
end_mutex_group
begin_mutex_group
7
13 0
13 1
13 2
13 3
13 4
13 5
13 6
end_mutex_group
begin_state
0
0
5
4
3
1
1
1
1
1
1
1
1
0
1
0
0
1
end_state
begin_goal
3
0 1
14 0
17 0
end_goal
323
begin_operator
drive-fire-unit f1 l1 l2
1
0 1
1
0 1 0 1
0
end_operator
begin_operator
drive-fire-unit f1 l1 l3
0
1
0 1 0 2
0
end_operator
begin_operator
drive-fire-unit f1 l1 l4
0
1
0 1 0 3
0
end_operator
begin_operator
drive-fire-unit f1 l1 l5
0
1
0 1 0 4
0
end_operator
begin_operator
drive-fire-unit f1 l1 l6
0
1
0 1 0 5
0
end_operator
begin_operator
drive-fire-unit f1 l1 l7
0
1
0 1 0 6
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
0
1
0 1 1 0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l3
0
1
0 1 1 2
0
end_operator
begin_operator
drive-fire-unit f1 l2 l4
0
1
0 1 1 3
0
end_operator
begin_operator
drive-fire-unit f1 l2 l5
0
1
0 1 1 4
0
end_operator
begin_operator
drive-fire-unit f1 l2 l7
0
1
0 1 1 6
0
end_operator
begin_operator
drive-fire-unit f1 l3 l1
0
1
0 1 2 0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l2
1
0 1
1
0 1 2 1
0
end_operator
begin_operator
drive-fire-unit f1 l3 l4
0
1
0 1 2 3
0
end_operator
begin_operator
drive-fire-unit f1 l3 l5
0
1
0 1 2 4
0
end_operator
begin_operator
drive-fire-unit f1 l3 l6
0
1
0 1 2 5
0
end_operator
begin_operator
drive-fire-unit f1 l3 l7
0
1
0 1 2 6
0
end_operator
begin_operator
drive-fire-unit f1 l4 l1
0
1
0 1 3 0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l2
1
0 1
1
0 1 3 1
0
end_operator
begin_operator
drive-fire-unit f1 l4 l3
0
1
0 1 3 2
0
end_operator
begin_operator
drive-fire-unit f1 l4 l5
0
1
0 1 3 4
0
end_operator
begin_operator
drive-fire-unit f1 l5 l1
0
1
0 1 4 0
0
end_operator
begin_operator
drive-fire-unit f1 l5 l2
1
0 1
1
0 1 4 1
0
end_operator
begin_operator
drive-fire-unit f1 l5 l3
0
1
0 1 4 2
0
end_operator
begin_operator
drive-fire-unit f1 l5 l4
0
1
0 1 4 3
0
end_operator
begin_operator
drive-fire-unit f1 l6 l1
0
1
0 1 5 0
0
end_operator
begin_operator
drive-fire-unit f1 l6 l3
0
1
0 1 5 2
0
end_operator
begin_operator
drive-fire-unit f1 l7 l1
0
1
0 1 6 0
0
end_operator
begin_operator
drive-fire-unit f1 l7 l2
1
0 1
1
0 1 6 1
0
end_operator
begin_operator
drive-fire-unit f1 l7 l3
0
1
0 1 6 2
0
end_operator
begin_operator
drive-fire-unit f2 l1 l2
1
0 1
1
0 2 0 1
0
end_operator
begin_operator
drive-fire-unit f2 l1 l3
0
1
0 2 0 2
0
end_operator
begin_operator
drive-fire-unit f2 l1 l4
0
1
0 2 0 3
0
end_operator
begin_operator
drive-fire-unit f2 l1 l5
0
1
0 2 0 4
0
end_operator
begin_operator
drive-fire-unit f2 l1 l6
0
1
0 2 0 5
0
end_operator
begin_operator
drive-fire-unit f2 l1 l7
0
1
0 2 0 6
0
end_operator
begin_operator
drive-fire-unit f2 l2 l1
0
1
0 2 1 0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l3
0
1
0 2 1 2
0
end_operator
begin_operator
drive-fire-unit f2 l2 l4
0
1
0 2 1 3
0
end_operator
begin_operator
drive-fire-unit f2 l2 l5
0
1
0 2 1 4
0
end_operator
begin_operator
drive-fire-unit f2 l2 l7
0
1
0 2 1 6
0
end_operator
begin_operator
drive-fire-unit f2 l3 l1
0
1
0 2 2 0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l2
1
0 1
1
0 2 2 1
0
end_operator
begin_operator
drive-fire-unit f2 l3 l4
0
1
0 2 2 3
0
end_operator
begin_operator
drive-fire-unit f2 l3 l5
0
1
0 2 2 4
0
end_operator
begin_operator
drive-fire-unit f2 l3 l6
0
1
0 2 2 5
0
end_operator
begin_operator
drive-fire-unit f2 l3 l7
0
1
0 2 2 6
0
end_operator
begin_operator
drive-fire-unit f2 l4 l1
0
1
0 2 3 0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l2
1
0 1
1
0 2 3 1
0
end_operator
begin_operator
drive-fire-unit f2 l4 l3
0
1
0 2 3 2
0
end_operator
begin_operator
drive-fire-unit f2 l4 l5
0
1
0 2 3 4
0
end_operator
begin_operator
drive-fire-unit f2 l5 l1
0
1
0 2 4 0
0
end_operator
begin_operator
drive-fire-unit f2 l5 l2
1
0 1
1
0 2 4 1
0
end_operator
begin_operator
drive-fire-unit f2 l5 l3
0
1
0 2 4 2
0
end_operator
begin_operator
drive-fire-unit f2 l5 l4
0
1
0 2 4 3
0
end_operator
begin_operator
drive-fire-unit f2 l6 l1
0
1
0 2 5 0
0
end_operator
begin_operator
drive-fire-unit f2 l6 l3
0
1
0 2 5 2
0
end_operator
begin_operator
drive-fire-unit f2 l7 l1
0
1
0 2 6 0
0
end_operator
begin_operator
drive-fire-unit f2 l7 l2
1
0 1
1
0 2 6 1
0
end_operator
begin_operator
drive-fire-unit f2 l7 l3
0
1
0 2 6 2
0
end_operator
begin_operator
drive-fire-unit f3 l1 l2
1
0 1
1
0 3 0 1
0
end_operator
begin_operator
drive-fire-unit f3 l1 l3
0
1
0 3 0 2
0
end_operator
begin_operator
drive-fire-unit f3 l1 l4
0
1
0 3 0 3
0
end_operator
begin_operator
drive-fire-unit f3 l1 l5
0
1
0 3 0 4
0
end_operator
begin_operator
drive-fire-unit f3 l1 l6
0
1
0 3 0 5
0
end_operator
begin_operator
drive-fire-unit f3 l1 l7
0
1
0 3 0 6
0
end_operator
begin_operator
drive-fire-unit f3 l2 l1
0
1
0 3 1 0
0
end_operator
begin_operator
drive-fire-unit f3 l2 l3
0
1
0 3 1 2
0
end_operator
begin_operator
drive-fire-unit f3 l2 l4
0
1
0 3 1 3
0
end_operator
begin_operator
drive-fire-unit f3 l2 l5
0
1
0 3 1 4
0
end_operator
begin_operator
drive-fire-unit f3 l2 l7
0
1
0 3 1 6
0
end_operator
begin_operator
drive-fire-unit f3 l3 l1
0
1
0 3 2 0
0
end_operator
begin_operator
drive-fire-unit f3 l3 l2
1
0 1
1
0 3 2 1
0
end_operator
begin_operator
drive-fire-unit f3 l3 l4
0
1
0 3 2 3
0
end_operator
begin_operator
drive-fire-unit f3 l3 l5
0
1
0 3 2 4
0
end_operator
begin_operator
drive-fire-unit f3 l3 l6
0
1
0 3 2 5
0
end_operator
begin_operator
drive-fire-unit f3 l3 l7
0
1
0 3 2 6
0
end_operator
begin_operator
drive-fire-unit f3 l4 l1
0
1
0 3 3 0
0
end_operator
begin_operator
drive-fire-unit f3 l4 l2
1
0 1
1
0 3 3 1
0
end_operator
begin_operator
drive-fire-unit f3 l4 l3
0
1
0 3 3 2
0
end_operator
begin_operator
drive-fire-unit f3 l4 l5
0
1
0 3 3 4
0
end_operator
begin_operator
drive-fire-unit f3 l5 l1
0
1
0 3 4 0
0
end_operator
begin_operator
drive-fire-unit f3 l5 l2
1
0 1
1
0 3 4 1
0
end_operator
begin_operator
drive-fire-unit f3 l5 l3
0
1
0 3 4 2
0
end_operator
begin_operator
drive-fire-unit f3 l5 l4
0
1
0 3 4 3
0
end_operator
begin_operator
drive-fire-unit f3 l6 l1
0
1
0 3 5 0
0
end_operator
begin_operator
drive-fire-unit f3 l6 l3
0
1
0 3 5 2
0
end_operator
begin_operator
drive-fire-unit f3 l7 l1
0
1
0 3 6 0
0
end_operator
begin_operator
drive-fire-unit f3 l7 l2
1
0 1
1
0 3 6 1
0
end_operator
begin_operator
drive-fire-unit f3 l7 l3
0
1
0 3 6 2
0
end_operator
begin_operator
drive-fire-unit f4 l1 l2
1
0 1
1
0 4 0 1
0
end_operator
begin_operator
drive-fire-unit f4 l1 l3
0
1
0 4 0 2
0
end_operator
begin_operator
drive-fire-unit f4 l1 l4
0
1
0 4 0 3
0
end_operator
begin_operator
drive-fire-unit f4 l1 l5
0
1
0 4 0 4
0
end_operator
begin_operator
drive-fire-unit f4 l1 l6
0
1
0 4 0 5
0
end_operator
begin_operator
drive-fire-unit f4 l1 l7
0
1
0 4 0 6
0
end_operator
begin_operator
drive-fire-unit f4 l2 l1
0
1
0 4 1 0
0
end_operator
begin_operator
drive-fire-unit f4 l2 l3
0
1
0 4 1 2
0
end_operator
begin_operator
drive-fire-unit f4 l2 l4
0
1
0 4 1 3
0
end_operator
begin_operator
drive-fire-unit f4 l2 l5
0
1
0 4 1 4
0
end_operator
begin_operator
drive-fire-unit f4 l2 l7
0
1
0 4 1 6
0
end_operator
begin_operator
drive-fire-unit f4 l3 l1
0
1
0 4 2 0
0
end_operator
begin_operator
drive-fire-unit f4 l3 l2
1
0 1
1
0 4 2 1
0
end_operator
begin_operator
drive-fire-unit f4 l3 l4
0
1
0 4 2 3
0
end_operator
begin_operator
drive-fire-unit f4 l3 l5
0
1
0 4 2 4
0
end_operator
begin_operator
drive-fire-unit f4 l3 l6
0
1
0 4 2 5
0
end_operator
begin_operator
drive-fire-unit f4 l3 l7
0
1
0 4 2 6
0
end_operator
begin_operator
drive-fire-unit f4 l4 l1
0
1
0 4 3 0
0
end_operator
begin_operator
drive-fire-unit f4 l4 l2
1
0 1
1
0 4 3 1
0
end_operator
begin_operator
drive-fire-unit f4 l4 l3
0
1
0 4 3 2
0
end_operator
begin_operator
drive-fire-unit f4 l4 l5
0
1
0 4 3 4
0
end_operator
begin_operator
drive-fire-unit f4 l5 l1
0
1
0 4 4 0
0
end_operator
begin_operator
drive-fire-unit f4 l5 l2
1
0 1
1
0 4 4 1
0
end_operator
begin_operator
drive-fire-unit f4 l5 l3
0
1
0 4 4 2
0
end_operator
begin_operator
drive-fire-unit f4 l5 l4
0
1
0 4 4 3
0
end_operator
begin_operator
drive-fire-unit f4 l6 l1
0
1
0 4 5 0
0
end_operator
begin_operator
drive-fire-unit f4 l6 l3
0
1
0 4 5 2
0
end_operator
begin_operator
drive-fire-unit f4 l7 l1
0
1
0 4 6 0
0
end_operator
begin_operator
drive-fire-unit f4 l7 l2
1
0 1
1
0 4 6 1
0
end_operator
begin_operator
drive-fire-unit f4 l7 l3
0
1
0 4 6 2
0
end_operator
begin_operator
drive-fire-unit f5 l1 l2
1
0 1
1
0 5 0 1
0
end_operator
begin_operator
drive-fire-unit f5 l1 l3
0
1
0 5 0 2
0
end_operator
begin_operator
drive-fire-unit f5 l1 l4
0
1
0 5 0 3
0
end_operator
begin_operator
drive-fire-unit f5 l1 l5
0
1
0 5 0 4
0
end_operator
begin_operator
drive-fire-unit f5 l1 l6
0
1
0 5 0 5
0
end_operator
begin_operator
drive-fire-unit f5 l1 l7
0
1
0 5 0 6
0
end_operator
begin_operator
drive-fire-unit f5 l2 l1
0
1
0 5 1 0
0
end_operator
begin_operator
drive-fire-unit f5 l2 l3
0
1
0 5 1 2
0
end_operator
begin_operator
drive-fire-unit f5 l2 l4
0
1
0 5 1 3
0
end_operator
begin_operator
drive-fire-unit f5 l2 l5
0
1
0 5 1 4
0
end_operator
begin_operator
drive-fire-unit f5 l2 l7
0
1
0 5 1 6
0
end_operator
begin_operator
drive-fire-unit f5 l3 l1
0
1
0 5 2 0
0
end_operator
begin_operator
drive-fire-unit f5 l3 l2
1
0 1
1
0 5 2 1
0
end_operator
begin_operator
drive-fire-unit f5 l3 l4
0
1
0 5 2 3
0
end_operator
begin_operator
drive-fire-unit f5 l3 l5
0
1
0 5 2 4
0
end_operator
begin_operator
drive-fire-unit f5 l3 l6
0
1
0 5 2 5
0
end_operator
begin_operator
drive-fire-unit f5 l3 l7
0
1
0 5 2 6
0
end_operator
begin_operator
drive-fire-unit f5 l4 l1
0
1
0 5 3 0
0
end_operator
begin_operator
drive-fire-unit f5 l4 l2
1
0 1
1
0 5 3 1
0
end_operator
begin_operator
drive-fire-unit f5 l4 l3
0
1
0 5 3 2
0
end_operator
begin_operator
drive-fire-unit f5 l4 l5
0
1
0 5 3 4
0
end_operator
begin_operator
drive-fire-unit f5 l5 l1
0
1
0 5 4 0
0
end_operator
begin_operator
drive-fire-unit f5 l5 l2
1
0 1
1
0 5 4 1
0
end_operator
begin_operator
drive-fire-unit f5 l5 l3
0
1
0 5 4 2
0
end_operator
begin_operator
drive-fire-unit f5 l5 l4
0
1
0 5 4 3
0
end_operator
begin_operator
drive-fire-unit f5 l6 l1
0
1
0 5 5 0
0
end_operator
begin_operator
drive-fire-unit f5 l6 l3
0
1
0 5 5 2
0
end_operator
begin_operator
drive-fire-unit f5 l7 l1
0
1
0 5 6 0
0
end_operator
begin_operator
drive-fire-unit f5 l7 l2
1
0 1
1
0 5 6 1
0
end_operator
begin_operator
drive-fire-unit f5 l7 l3
0
1
0 5 6 2
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
1
0 1
1
0 13 0 1
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
0
1
0 13 0 2
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
0
1
0 13 0 3
0
end_operator
begin_operator
drive-medical-unit m1 l1 l5
0
1
0 13 0 4
0
end_operator
begin_operator
drive-medical-unit m1 l1 l6
0
1
0 13 0 5
0
end_operator
begin_operator
drive-medical-unit m1 l1 l7
0
1
0 13 0 6
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
0
1
0 13 1 0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l3
0
1
0 13 1 2
0
end_operator
begin_operator
drive-medical-unit m1 l2 l4
0
1
0 13 1 3
0
end_operator
begin_operator
drive-medical-unit m1 l2 l5
0
1
0 13 1 4
0
end_operator
begin_operator
drive-medical-unit m1 l2 l7
0
1
0 13 1 6
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
0
1
0 13 2 0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
1
0 1
1
0 13 2 1
0
end_operator
begin_operator
drive-medical-unit m1 l3 l4
0
1
0 13 2 3
0
end_operator
begin_operator
drive-medical-unit m1 l3 l5
0
1
0 13 2 4
0
end_operator
begin_operator
drive-medical-unit m1 l3 l6
0
1
0 13 2 5
0
end_operator
begin_operator
drive-medical-unit m1 l3 l7
0
1
0 13 2 6
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
0
1
0 13 3 0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l2
1
0 1
1
0 13 3 1
0
end_operator
begin_operator
drive-medical-unit m1 l4 l3
0
1
0 13 3 2
0
end_operator
begin_operator
drive-medical-unit m1 l4 l5
0
1
0 13 3 4
0
end_operator
begin_operator
drive-medical-unit m1 l5 l1
0
1
0 13 4 0
0
end_operator
begin_operator
drive-medical-unit m1 l5 l2
1
0 1
1
0 13 4 1
0
end_operator
begin_operator
drive-medical-unit m1 l5 l3
0
1
0 13 4 2
0
end_operator
begin_operator
drive-medical-unit m1 l5 l4
0
1
0 13 4 3
0
end_operator
begin_operator
drive-medical-unit m1 l6 l1
0
1
0 13 5 0
0
end_operator
begin_operator
drive-medical-unit m1 l6 l3
0
1
0 13 5 2
0
end_operator
begin_operator
drive-medical-unit m1 l7 l1
0
1
0 13 6 0
0
end_operator
begin_operator
drive-medical-unit m1 l7 l2
1
0 1
1
0 13 6 1
0
end_operator
begin_operator
drive-medical-unit m1 l7 l3
0
1
0 13 6 2
0
end_operator
begin_operator
load-fire-unit f1 l4
1
1 3
1
0 8 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l4
1
2 3
1
0 9 -1 0
0
end_operator
begin_operator
load-fire-unit f3 l4
1
3 3
1
0 10 -1 0
0
end_operator
begin_operator
load-fire-unit f4 l4
1
4 3
1
0 11 -1 0
0
end_operator
begin_operator
load-fire-unit f5 l4
1
5 3
1
0 12 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
1
13 0
1
0 6 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
1
13 0
1
0 7 1 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
13 1
1
0 6 2 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
1
13 1
1
0 7 2 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
1
13 2
1
0 6 3 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
1
13 2
1
0 7 3 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
1
13 3
1
0 6 4 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v2
1
13 3
1
0 7 4 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v1
1
13 4
1
0 6 5 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v2
1
13 4
1
0 7 5 0
0
end_operator
begin_operator
load-medical-unit m1 l6 v1
1
13 5
1
0 6 6 0
0
end_operator
begin_operator
load-medical-unit m1 l6 v2
1
13 5
1
0 7 6 0
0
end_operator
begin_operator
load-medical-unit m1 l7 v1
1
13 6
1
0 6 7 0
0
end_operator
begin_operator
load-medical-unit m1 l7 v2
1
13 6
1
0 7 7 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l2
1
6 2
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l3
1
6 3
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l5
1
6 5
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l6
1
6 6
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l2
1
7 2
2
0 16 -1 1
0 17 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l3
1
7 3
2
0 16 -1 1
0 17 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l5
1
7 5
2
0 16 -1 1
0 17 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l6
1
7 6
2
0 16 -1 1
0 17 -1 0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
2
1 0
6 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v1
2
1 1
6 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v1
2
1 2
6 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v1
2
1 3
6 4
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l5 v1
2
1 4
6 5
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l6 v1
2
1 5
6 6
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l7 v1
2
1 6
6 7
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l1 v1
2
2 0
6 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l2 v1
2
2 1
6 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l3 v1
2
2 2
6 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l4 v1
2
2 3
6 4
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l5 v1
2
2 4
6 5
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l6 v1
2
2 5
6 6
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l7 v1
2
2 6
6 7
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l1 v1
2
3 0
6 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l2 v1
2
3 1
6 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l3 v1
2
3 2
6 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l4 v1
2
3 3
6 4
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l5 v1
2
3 4
6 5
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l6 v1
2
3 5
6 6
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l7 v1
2
3 6
6 7
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l1 v1
2
4 0
6 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l2 v1
2
4 1
6 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l3 v1
2
4 2
6 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l4 v1
2
4 3
6 4
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l5 v1
2
4 4
6 5
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l6 v1
2
4 5
6 6
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f4 l7 v1
2
4 6
6 7
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l1 v1
2
5 0
6 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l2 v1
2
5 1
6 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l3 v1
2
5 2
6 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l4 v1
2
5 3
6 4
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l5 v1
2
5 4
6 5
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l6 v1
2
5 5
6 6
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f5 l7 v1
2
5 6
6 7
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
2
6 1
13 0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
2
6 2
13 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v1
2
6 3
13 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v1
2
6 4
13 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l5 v1
2
6 5
13 4
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l6 v1
2
6 6
13 5
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l7 v1
2
6 7
13 6
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
2
0 0
1 0
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
1
1 0
2
0 0 0 1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
2
0 0
1 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
1
1 1
2
0 0 0 1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l3 l2
2
0 0
1 2
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l3 l2
1
1 2
2
0 0 0 1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l4 l2
2
0 0
1 3
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l4 l2
1
1 3
2
0 0 0 1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l5 l2
2
0 0
1 4
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l5 l2
1
1 4
2
0 0 0 1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l7 l2
2
0 0
1 6
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l7 l2
1
1 6
2
0 0 0 1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l1 l2
2
0 0
2 0
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l1 l2
1
2 0
2
0 0 0 1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l2 l2
2
0 0
2 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l2 l2
1
2 1
2
0 0 0 1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l3 l2
2
0 0
2 2
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l3 l2
1
2 2
2
0 0 0 1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l4 l2
2
0 0
2 3
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l4 l2
1
2 3
2
0 0 0 1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l5 l2
2
0 0
2 4
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l5 l2
1
2 4
2
0 0 0 1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l7 l2
2
0 0
2 6
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l7 l2
1
2 6
2
0 0 0 1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l1 l2
2
0 0
3 0
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l1 l2
1
3 0
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l2 l2
2
0 0
3 1
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l2 l2
1
3 1
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l3 l2
2
0 0
3 2
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l3 l2
1
3 2
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l4 l2
2
0 0
3 3
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l4 l2
1
3 3
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l5 l2
2
0 0
3 4
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l5 l2
1
3 4
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l7 l2
2
0 0
3 6
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l7 l2
1
3 6
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l1 l2
2
0 0
4 0
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l1 l2
1
4 0
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l2 l2
2
0 0
4 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l2 l2
1
4 1
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l3 l2
2
0 0
4 2
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l3 l2
1
4 2
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l4 l2
2
0 0
4 3
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l4 l2
1
4 3
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l5 l2
2
0 0
4 4
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l5 l2
1
4 4
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l7 l2
2
0 0
4 6
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l7 l2
1
4 6
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l1 l2
2
0 0
5 0
1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l1 l2
1
5 0
2
0 0 0 1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l2 l2
2
0 0
5 1
1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l2 l2
1
5 1
2
0 0 0 1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l3 l2
2
0 0
5 2
1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l3 l2
1
5 2
2
0 0 0 1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l4 l2
2
0 0
5 3
1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l4 l2
1
5 3
2
0 0 0 1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l5 l2
2
0 0
5 4
1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l5 l2
1
5 4
2
0 0 0 1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l7 l2
2
0 0
5 6
1
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l7 l2
1
5 6
2
0 0 0 1
0 12 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
1
13 0
1
0 6 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
1
13 0
1
0 7 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
13 1
1
0 6 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
1
13 1
1
0 7 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
1
13 2
1
0 6 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
1
13 2
1
0 7 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
1
13 3
1
0 6 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l4 v2
1
13 3
1
0 7 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l5 v1
1
13 4
1
0 6 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l5 v2
1
13 4
1
0 7 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l6 v1
1
13 5
1
0 6 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l6 v2
1
13 5
1
0 7 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l7 v1
1
13 6
1
0 6 0 7
0
end_operator
begin_operator
unload-medical-unit m1 l7 v2
1
13 6
1
0 7 0 7
0
end_operator
0
