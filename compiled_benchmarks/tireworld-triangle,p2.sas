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
2
Atom not-flattire()
NegatedAtom not-flattire()
end_variable
begin_variable
var1
-1
2
Atom spare-in(l-2-1)
NegatedAtom spare-in(l-2-1)
end_variable
begin_variable
var2
-1
2
Atom spare-in(l-2-2)
NegatedAtom spare-in(l-2-2)
end_variable
begin_variable
var3
-1
2
Atom spare-in(l-2-3)
NegatedAtom spare-in(l-2-3)
end_variable
begin_variable
var4
-1
2
Atom spare-in(l-2-4)
NegatedAtom spare-in(l-2-4)
end_variable
begin_variable
var5
-1
2
Atom spare-in(l-3-1)
NegatedAtom spare-in(l-3-1)
end_variable
begin_variable
var6
-1
2
Atom spare-in(l-3-3)
NegatedAtom spare-in(l-3-3)
end_variable
begin_variable
var7
-1
2
Atom spare-in(l-4-1)
NegatedAtom spare-in(l-4-1)
end_variable
begin_variable
var8
-1
2
Atom spare-in(l-4-2)
NegatedAtom spare-in(l-4-2)
end_variable
begin_variable
var9
-1
2
Atom spare-in(l-5-1)
NegatedAtom spare-in(l-5-1)
end_variable
begin_variable
var10
-1
15
Atom vehicle-at(l-1-1)
Atom vehicle-at(l-1-2)
Atom vehicle-at(l-1-3)
Atom vehicle-at(l-1-4)
Atom vehicle-at(l-1-5)
Atom vehicle-at(l-2-1)
Atom vehicle-at(l-2-2)
Atom vehicle-at(l-2-3)
Atom vehicle-at(l-2-4)
Atom vehicle-at(l-3-1)
Atom vehicle-at(l-3-2)
Atom vehicle-at(l-3-3)
Atom vehicle-at(l-4-1)
Atom vehicle-at(l-4-2)
Atom vehicle-at(l-5-1)
end_variable
1
begin_mutex_group
15
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
10 8
10 9
10 10
10 11
10 12
10 13
10 14
end_mutex_group
begin_state
0
0
0
0
0
0
0
0
0
0
0
end_state
begin_goal
1
10 4
end_goal
57
begin_operator
changetire l-2-1
1
10 5
2
0 0 -1 0
0 1 0 1
0
end_operator
begin_operator
changetire l-2-2
1
10 6
2
0 0 -1 0
0 2 0 1
0
end_operator
begin_operator
changetire l-2-3
1
10 7
2
0 0 -1 0
0 3 0 1
0
end_operator
begin_operator
changetire l-2-4
1
10 8
2
0 0 -1 0
0 4 0 1
0
end_operator
begin_operator
changetire l-3-1
1
10 9
2
0 0 -1 0
0 5 0 1
0
end_operator
begin_operator
changetire l-3-3
1
10 11
2
0 0 -1 0
0 6 0 1
0
end_operator
begin_operator
changetire l-4-1
1
10 12
2
0 0 -1 0
0 7 0 1
0
end_operator
begin_operator
changetire l-4-2
1
10 13
2
0 0 -1 0
0 8 0 1
0
end_operator
begin_operator
changetire l-5-1
1
10 14
2
0 0 -1 0
0 9 0 1
0
end_operator
begin_operator
move-car l-1-1 l-1-2
0
2
0 0 0 1
0 10 0 1
0
end_operator
begin_operator
move-car l-1-1 l-1-2
1
0 0
1
0 10 0 1
0
end_operator
begin_operator
move-car l-1-1 l-2-1
0
2
0 0 0 1
0 10 0 5
0
end_operator
begin_operator
move-car l-1-1 l-2-1
1
0 0
1
0 10 0 5
0
end_operator
begin_operator
move-car l-1-2 l-1-3
0
2
0 0 0 1
0 10 1 2
0
end_operator
begin_operator
move-car l-1-2 l-1-3
1
0 0
1
0 10 1 2
0
end_operator
begin_operator
move-car l-1-2 l-2-2
0
2
0 0 0 1
0 10 1 6
0
end_operator
begin_operator
move-car l-1-2 l-2-2
1
0 0
1
0 10 1 6
0
end_operator
begin_operator
move-car l-1-3 l-1-4
0
2
0 0 0 1
0 10 2 3
0
end_operator
begin_operator
move-car l-1-3 l-1-4
1
0 0
1
0 10 2 3
0
end_operator
begin_operator
move-car l-1-3 l-2-3
0
2
0 0 0 1
0 10 2 7
0
end_operator
begin_operator
move-car l-1-3 l-2-3
1
0 0
1
0 10 2 7
0
end_operator
begin_operator
move-car l-1-4 l-1-5
0
2
0 0 0 1
0 10 3 4
0
end_operator
begin_operator
move-car l-1-4 l-1-5
1
0 0
1
0 10 3 4
0
end_operator
begin_operator
move-car l-1-4 l-2-4
0
2
0 0 0 1
0 10 3 8
0
end_operator
begin_operator
move-car l-1-4 l-2-4
1
0 0
1
0 10 3 8
0
end_operator
begin_operator
move-car l-2-1 l-1-2
0
2
0 0 0 1
0 10 5 1
0
end_operator
begin_operator
move-car l-2-1 l-1-2
1
0 0
1
0 10 5 1
0
end_operator
begin_operator
move-car l-2-1 l-3-1
0
2
0 0 0 1
0 10 5 9
0
end_operator
begin_operator
move-car l-2-1 l-3-1
1
0 0
1
0 10 5 9
0
end_operator
begin_operator
move-car l-2-2 l-1-3
0
2
0 0 0 1
0 10 6 2
0
end_operator
begin_operator
move-car l-2-2 l-1-3
1
0 0
1
0 10 6 2
0
end_operator
begin_operator
move-car l-2-3 l-1-4
0
2
0 0 0 1
0 10 7 3
0
end_operator
begin_operator
move-car l-2-3 l-1-4
1
0 0
1
0 10 7 3
0
end_operator
begin_operator
move-car l-2-3 l-3-3
0
2
0 0 0 1
0 10 7 11
0
end_operator
begin_operator
move-car l-2-3 l-3-3
1
0 0
1
0 10 7 11
0
end_operator
begin_operator
move-car l-2-4 l-1-5
0
2
0 0 0 1
0 10 8 4
0
end_operator
begin_operator
move-car l-2-4 l-1-5
1
0 0
1
0 10 8 4
0
end_operator
begin_operator
move-car l-3-1 l-2-2
0
2
0 0 0 1
0 10 9 6
0
end_operator
begin_operator
move-car l-3-1 l-2-2
1
0 0
1
0 10 9 6
0
end_operator
begin_operator
move-car l-3-1 l-3-2
0
2
0 0 0 1
0 10 9 10
0
end_operator
begin_operator
move-car l-3-1 l-3-2
1
0 0
1
0 10 9 10
0
end_operator
begin_operator
move-car l-3-1 l-4-1
0
2
0 0 0 1
0 10 9 12
0
end_operator
begin_operator
move-car l-3-1 l-4-1
1
0 0
1
0 10 9 12
0
end_operator
begin_operator
move-car l-3-2 l-3-3
0
2
0 0 0 1
0 10 10 11
0
end_operator
begin_operator
move-car l-3-2 l-3-3
1
0 0
1
0 10 10 11
0
end_operator
begin_operator
move-car l-3-2 l-4-2
0
2
0 0 0 1
0 10 10 13
0
end_operator
begin_operator
move-car l-3-2 l-4-2
1
0 0
1
0 10 10 13
0
end_operator
begin_operator
move-car l-3-3 l-2-4
0
2
0 0 0 1
0 10 11 8
0
end_operator
begin_operator
move-car l-3-3 l-2-4
1
0 0
1
0 10 11 8
0
end_operator
begin_operator
move-car l-4-1 l-3-2
0
2
0 0 0 1
0 10 12 10
0
end_operator
begin_operator
move-car l-4-1 l-3-2
1
0 0
1
0 10 12 10
0
end_operator
begin_operator
move-car l-4-1 l-5-1
0
2
0 0 0 1
0 10 12 14
0
end_operator
begin_operator
move-car l-4-1 l-5-1
1
0 0
1
0 10 12 14
0
end_operator
begin_operator
move-car l-4-2 l-3-3
0
2
0 0 0 1
0 10 13 11
0
end_operator
begin_operator
move-car l-4-2 l-3-3
1
0 0
1
0 10 13 11
0
end_operator
begin_operator
move-car l-5-1 l-4-2
0
2
0 0 0 1
0 10 14 13
0
end_operator
begin_operator
move-car l-5-1 l-4-2
1
0 0
1
0 10 14 13
0
end_operator
0
