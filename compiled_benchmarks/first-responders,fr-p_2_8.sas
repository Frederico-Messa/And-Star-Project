begin_version
3
end_version
begin_metric
0
end_metric
30
begin_variable
var0
-1
2
Atom fire(l1)
Atom nfire(l1)
end_variable
begin_variable
var1
-1
2
Atom fire(l2)
Atom nfire(l2)
end_variable
begin_variable
var2
-1
2
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
end_variable
begin_variable
var3
-1
4
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m2)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
end_variable
begin_variable
var4
-1
4
Atom have-victim-in-unit(v2, m1)
Atom have-victim-in-unit(v2, m2)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
end_variable
begin_variable
var5
-1
4
Atom have-victim-in-unit(v3, m1)
Atom have-victim-in-unit(v3, m2)
Atom victim-at(v3, l1)
Atom victim-at(v3, l2)
end_variable
begin_variable
var6
-1
4
Atom have-victim-in-unit(v4, m1)
Atom have-victim-in-unit(v4, m2)
Atom victim-at(v4, l1)
Atom victim-at(v4, l2)
end_variable
begin_variable
var7
-1
4
Atom have-victim-in-unit(v5, m1)
Atom have-victim-in-unit(v5, m2)
Atom victim-at(v5, l1)
Atom victim-at(v5, l2)
end_variable
begin_variable
var8
-1
4
Atom have-victim-in-unit(v6, m1)
Atom have-victim-in-unit(v6, m2)
Atom victim-at(v6, l1)
Atom victim-at(v6, l2)
end_variable
begin_variable
var9
-1
4
Atom have-victim-in-unit(v7, m1)
Atom have-victim-in-unit(v7, m2)
Atom victim-at(v7, l1)
Atom victim-at(v7, l2)
end_variable
begin_variable
var10
-1
4
Atom have-victim-in-unit(v8, m1)
Atom have-victim-in-unit(v8, m2)
Atom victim-at(v8, l1)
Atom victim-at(v8, l2)
end_variable
begin_variable
var11
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var12
-1
2
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
end_variable
begin_variable
var13
-1
2
Atom medical-unit-at(m2, l1)
Atom medical-unit-at(m2, l2)
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
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var17
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
end_variable
begin_variable
var18
-1
2
Atom victim-status(v3, dying)
NegatedAtom victim-status(v3, dying)
end_variable
begin_variable
var19
-1
2
Atom victim-status(v3, healthy)
NegatedAtom victim-status(v3, healthy)
end_variable
begin_variable
var20
-1
2
Atom victim-status(v4, dying)
NegatedAtom victim-status(v4, dying)
end_variable
begin_variable
var21
-1
2
Atom victim-status(v4, healthy)
NegatedAtom victim-status(v4, healthy)
end_variable
begin_variable
var22
-1
2
Atom victim-status(v5, healthy)
NegatedAtom victim-status(v5, healthy)
end_variable
begin_variable
var23
-1
2
Atom victim-status(v5, hurt)
NegatedAtom victim-status(v5, hurt)
end_variable
begin_variable
var24
-1
2
Atom victim-status(v6, healthy)
NegatedAtom victim-status(v6, healthy)
end_variable
begin_variable
var25
-1
2
Atom victim-status(v6, hurt)
NegatedAtom victim-status(v6, hurt)
end_variable
begin_variable
var26
-1
2
Atom victim-status(v7, healthy)
NegatedAtom victim-status(v7, healthy)
end_variable
begin_variable
var27
-1
2
Atom victim-status(v7, hurt)
NegatedAtom victim-status(v7, hurt)
end_variable
begin_variable
var28
-1
2
Atom victim-status(v8, dying)
NegatedAtom victim-status(v8, dying)
end_variable
begin_variable
var29
-1
2
Atom victim-status(v8, healthy)
NegatedAtom victim-status(v8, healthy)
end_variable
13
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
2
1 0
1 1
end_mutex_group
begin_mutex_group
2
2 0
2 1
end_mutex_group
begin_mutex_group
4
3 0
3 1
3 2
3 3
end_mutex_group
begin_mutex_group
4
4 0
4 1
4 2
4 3
end_mutex_group
begin_mutex_group
4
5 0
5 1
5 2
5 3
end_mutex_group
begin_mutex_group
4
6 0
6 1
6 2
6 3
end_mutex_group
begin_mutex_group
4
7 0
7 1
7 2
7 3
end_mutex_group
begin_mutex_group
4
8 0
8 1
8 2
8 3
end_mutex_group
begin_mutex_group
4
9 0
9 1
9 2
9 3
end_mutex_group
begin_mutex_group
4
10 0
10 1
10 2
10 3
end_mutex_group
begin_mutex_group
2
12 0
12 1
end_mutex_group
begin_mutex_group
2
13 0
13 1
end_mutex_group
begin_state
0
0
1
3
2
2
3
3
2
2
3
1
0
0
1
0
1
0
0
1
0
1
1
0
1
0
1
0
0
1
end_state
begin_goal
10
0 1
1 1
14 0
16 0
19 0
21 0
22 0
24 0
26 0
29 0
end_goal
126
begin_operator
drive-fire-unit f1 l1 l2
1
1 1
1
0 2 0 1
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
1
0 1
1
0 2 1 0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
1
1 1
1
0 12 0 1
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
1
0 1
1
0 12 1 0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l2
1
1 1
1
0 13 0 1
0
end_operator
begin_operator
drive-medical-unit m2 l2 l1
1
0 1
1
0 13 1 0
0
end_operator
begin_operator
load-fire-unit f1 l1
1
2 0
1
0 11 -1 0
0
end_operator
begin_operator
load-fire-unit f1 l2
1
2 1
1
0 11 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
1
12 0
1
0 3 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
1
12 0
1
0 4 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v3
1
12 0
1
0 5 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v4
1
12 0
1
0 6 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v5
1
12 0
1
0 7 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v6
1
12 0
1
0 8 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v7
1
12 0
1
0 9 2 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v8
1
12 0
1
0 10 2 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
12 1
1
0 3 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
1
12 1
1
0 4 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v3
1
12 1
1
0 5 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v4
1
12 1
1
0 6 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v5
1
12 1
1
0 7 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v6
1
12 1
1
0 8 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v7
1
12 1
1
0 9 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v8
1
12 1
1
0 10 3 0
0
end_operator
begin_operator
load-medical-unit m2 l1 v1
1
13 0
1
0 3 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v2
1
13 0
1
0 4 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v3
1
13 0
1
0 5 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v4
1
13 0
1
0 6 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v5
1
13 0
1
0 7 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v6
1
13 0
1
0 8 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v7
1
13 0
1
0 9 2 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v8
1
13 0
1
0 10 2 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v1
1
13 1
1
0 3 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v2
1
13 1
1
0 4 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v3
1
13 1
1
0 5 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v4
1
13 1
1
0 6 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v5
1
13 1
1
0 7 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v6
1
13 1
1
0 8 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v7
1
13 1
1
0 9 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v8
1
13 1
1
0 10 3 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
3 2
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l2
1
3 3
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
4 2
2
0 16 -1 0
0 17 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l2
1
4 3
2
0 16 -1 0
0 17 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v3 l1
1
5 2
2
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v3 l2
1
5 3
2
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v4 l1
1
6 2
2
0 20 -1 1
0 21 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v4 l2
1
6 3
2
0 20 -1 1
0 21 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v5 l1
1
7 2
2
0 22 -1 0
0 23 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v5 l2
1
7 3
2
0 22 -1 0
0 23 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v6 l1
1
8 2
2
0 24 -1 0
0 25 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v6 l2
1
8 3
2
0 24 -1 0
0 25 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v7 l1
1
9 2
2
0 26 -1 0
0 27 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v7 l2
1
9 3
2
0 26 -1 0
0 27 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v8 l1
1
10 2
2
0 28 -1 1
0 29 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v8 l2
1
10 3
2
0 28 -1 1
0 29 -1 0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
2
2 0
3 2
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
2
2 0
4 2
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v5
2
2 0
7 2
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v6
2
2 0
8 2
2
0 24 -1 0
0 25 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v7
2
2 0
9 2
2
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v1
2
2 1
3 3
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v2
2
2 1
4 3
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v5
2
2 1
7 3
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v6
2
2 1
8 3
2
0 24 -1 0
0 25 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v7
2
2 1
9 3
2
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
2
3 2
12 0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
2
4 2
12 0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v5
2
7 2
12 0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v6
2
8 2
12 0
2
0 24 -1 0
0 25 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v7
2
9 2
12 0
2
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
2
3 3
12 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v2
2
4 3
12 1
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v5
2
7 3
12 1
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v6
2
8 3
12 1
2
0 24 -1 0
0 25 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v7
2
9 3
12 1
2
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v1
2
3 2
13 0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v2
2
4 2
13 0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v5
2
7 2
13 0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v6
2
8 2
13 0
2
0 24 -1 0
0 25 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v7
2
9 2
13 0
2
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v1
2
3 3
13 1
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v2
2
4 3
13 1
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v5
2
7 3
13 1
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v6
2
8 3
13 1
2
0 24 -1 0
0 25 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v7
2
9 3
13 1
2
0 26 -1 0
0 27 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
2
0 0
2 0
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
1
2 0
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
2
1 0
2 0
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
1
2 0
2
0 1 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l1
2
0 0
2 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l1
1
2 1
2
0 0 0 1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
2
1 0
2 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
1
2 1
2
0 1 0 1
0 11 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
1
12 0
1
0 3 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
1
12 0
1
0 4 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v3
1
12 0
1
0 5 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v4
1
12 0
1
0 6 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v5
1
12 0
1
0 7 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v6
1
12 0
1
0 8 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v7
1
12 0
1
0 9 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l1 v8
1
12 0
1
0 10 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
12 1
1
0 3 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
1
12 1
1
0 4 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v3
1
12 1
1
0 5 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v4
1
12 1
1
0 6 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v5
1
12 1
1
0 7 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v6
1
12 1
1
0 8 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v7
1
12 1
1
0 9 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v8
1
12 1
1
0 10 0 3
0
end_operator
begin_operator
unload-medical-unit m2 l1 v1
1
13 0
1
0 3 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v2
1
13 0
1
0 4 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v3
1
13 0
1
0 5 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v4
1
13 0
1
0 6 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v5
1
13 0
1
0 7 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v6
1
13 0
1
0 8 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v7
1
13 0
1
0 9 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l1 v8
1
13 0
1
0 10 1 2
0
end_operator
begin_operator
unload-medical-unit m2 l2 v1
1
13 1
1
0 3 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v2
1
13 1
1
0 4 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v3
1
13 1
1
0 5 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v4
1
13 1
1
0 6 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v5
1
13 1
1
0 7 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v6
1
13 1
1
0 8 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v7
1
13 1
1
0 9 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v8
1
13 1
1
0 10 1 3
0
end_operator
0
