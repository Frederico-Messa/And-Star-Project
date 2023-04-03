begin_version
3
end_version
begin_metric
0
end_metric
5
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
Atom spare-in(l-3-1)
NegatedAtom spare-in(l-3-1)
end_variable
begin_variable
var4
-1
6
Atom vehicle-at(l-1-1)
Atom vehicle-at(l-1-2)
Atom vehicle-at(l-1-3)
Atom vehicle-at(l-2-1)
Atom vehicle-at(l-2-2)
Atom vehicle-at(l-3-1)
end_variable
1
begin_mutex_group
6
4 0
4 1
4 2
4 3
4 4
4 5
end_mutex_group
begin_state
0
0
0
0
0
end_state
begin_goal
1
4 2
end_goal
19
begin_operator
changetire l-2-1
1
4 3
2
0 0 -1 0
0 1 0 1
0
end_operator
begin_operator
changetire l-2-2
1
4 4
2
0 0 -1 0
0 2 0 1
0
end_operator
begin_operator
changetire l-3-1
1
4 5
2
0 0 -1 0
0 3 0 1
0
end_operator
begin_operator
move-car l-1-1 l-1-2
0
2
0 0 0 1
0 4 0 1
0
end_operator
begin_operator
move-car l-1-1 l-1-2
1
0 0
1
0 4 0 1
0
end_operator
begin_operator
move-car l-1-1 l-2-1
0
2
0 0 0 1
0 4 0 3
0
end_operator
begin_operator
move-car l-1-1 l-2-1
1
0 0
1
0 4 0 3
0
end_operator
begin_operator
move-car l-1-2 l-1-3
0
2
0 0 0 1
0 4 1 2
0
end_operator
begin_operator
move-car l-1-2 l-1-3
1
0 0
1
0 4 1 2
0
end_operator
begin_operator
move-car l-1-2 l-2-2
0
2
0 0 0 1
0 4 1 4
0
end_operator
begin_operator
move-car l-1-2 l-2-2
1
0 0
1
0 4 1 4
0
end_operator
begin_operator
move-car l-2-1 l-1-2
0
2
0 0 0 1
0 4 3 1
0
end_operator
begin_operator
move-car l-2-1 l-1-2
1
0 0
1
0 4 3 1
0
end_operator
begin_operator
move-car l-2-1 l-3-1
0
2
0 0 0 1
0 4 3 5
0
end_operator
begin_operator
move-car l-2-1 l-3-1
1
0 0
1
0 4 3 5
0
end_operator
begin_operator
move-car l-2-2 l-1-3
0
2
0 0 0 1
0 4 4 2
0
end_operator
begin_operator
move-car l-2-2 l-1-3
1
0 0
1
0 4 4 2
0
end_operator
begin_operator
move-car l-3-1 l-2-2
0
2
0 0 0 1
0 4 5 4
0
end_operator
begin_operator
move-car l-3-1 l-2-2
1
0 0
1
0 4 5 4
0
end_operator
0
