begin_version
3
end_version
begin_metric
0
end_metric
7
begin_variable
var0
-1
2
Atom clear(b1)
NegatedAtom clear(b1)
end_variable
begin_variable
var1
-1
2
Atom clear(b2)
NegatedAtom clear(b2)
end_variable
begin_variable
var2
-1
2
Atom clear(b3)
NegatedAtom clear(b3)
end_variable
begin_variable
var3
-1
2
Atom emptyhand()
NegatedAtom emptyhand()
end_variable
begin_variable
var4
-1
5
Atom holding(b1)
Atom on(b1, b1)
Atom on(b1, b2)
Atom on(b1, b3)
Atom on-table(b1)
end_variable
begin_variable
var5
-1
5
Atom holding(b2)
Atom on(b2, b1)
Atom on(b2, b2)
Atom on(b2, b3)
Atom on-table(b2)
end_variable
begin_variable
var6
-1
5
Atom holding(b3)
Atom on(b3, b1)
Atom on(b3, b2)
Atom on(b3, b3)
Atom on-table(b3)
end_variable
4
begin_mutex_group
4
3 0
4 0
5 0
6 0
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
begin_state
0
0
1
0
4
3
4
end_state
begin_goal
6
0 0
2 0
3 0
4 2
5 4
6 4
end_goal
99
begin_operator
pick-tower b1 b1 b1
0
3
0 0 -1 0
0 3 0 1
0 4 1 0
0
end_operator
begin_operator
pick-tower b1 b2 b1
1
4 2
3
0 0 -1 0
0 3 0 1
0 5 1 0
0
end_operator
begin_operator
pick-tower b1 b2 b2
1
4 2
3
0 1 -1 0
0 3 0 1
0 5 2 0
0
end_operator
begin_operator
pick-tower b1 b2 b3
1
4 2
3
0 2 -1 0
0 3 0 1
0 5 3 0
0
end_operator
begin_operator
pick-tower b1 b3 b1
1
4 3
3
0 0 -1 0
0 3 0 1
0 6 1 0
0
end_operator
begin_operator
pick-tower b1 b3 b2
1
4 3
3
0 1 -1 0
0 3 0 1
0 6 2 0
0
end_operator
begin_operator
pick-tower b1 b3 b3
1
4 3
3
0 2 -1 0
0 3 0 1
0 6 3 0
0
end_operator
begin_operator
pick-tower b2 b1 b1
1
5 1
3
0 0 -1 0
0 3 0 1
0 4 1 0
0
end_operator
begin_operator
pick-tower b2 b1 b2
1
5 1
3
0 1 -1 0
0 3 0 1
0 4 2 0
0
end_operator
begin_operator
pick-tower b2 b1 b3
1
5 1
3
0 2 -1 0
0 3 0 1
0 4 3 0
0
end_operator
begin_operator
pick-tower b2 b2 b2
0
3
0 1 -1 0
0 3 0 1
0 5 2 0
0
end_operator
begin_operator
pick-tower b2 b3 b1
1
5 3
3
0 0 -1 0
0 3 0 1
0 6 1 0
0
end_operator
begin_operator
pick-tower b2 b3 b2
1
5 3
3
0 1 -1 0
0 3 0 1
0 6 2 0
0
end_operator
begin_operator
pick-tower b2 b3 b3
1
5 3
3
0 2 -1 0
0 3 0 1
0 6 3 0
0
end_operator
begin_operator
pick-tower b3 b1 b1
1
6 1
3
0 0 -1 0
0 3 0 1
0 4 1 0
0
end_operator
begin_operator
pick-tower b3 b1 b2
1
6 1
3
0 1 -1 0
0 3 0 1
0 4 2 0
0
end_operator
begin_operator
pick-tower b3 b1 b3
1
6 1
3
0 2 -1 0
0 3 0 1
0 4 3 0
0
end_operator
begin_operator
pick-tower b3 b2 b1
1
6 2
3
0 0 -1 0
0 3 0 1
0 5 1 0
0
end_operator
begin_operator
pick-tower b3 b2 b2
1
6 2
3
0 1 -1 0
0 3 0 1
0 5 2 0
0
end_operator
begin_operator
pick-tower b3 b2 b3
1
6 2
3
0 2 -1 0
0 3 0 1
0 5 3 0
0
end_operator
begin_operator
pick-tower b3 b3 b3
0
3
0 2 -1 0
0 3 0 1
0 6 3 0
0
end_operator
begin_operator
pick-up b1 b2
0
4
0 0 0 1
0 1 -1 0
0 3 0 1
0 4 2 0
0
end_operator
begin_operator
pick-up b1 b2
2
0 0
3 0
2
0 1 -1 0
0 4 2 4
0
end_operator
begin_operator
pick-up b1 b3
0
4
0 0 0 1
0 2 -1 0
0 3 0 1
0 4 3 0
0
end_operator
begin_operator
pick-up b1 b3
2
0 0
3 0
2
0 2 -1 0
0 4 3 4
0
end_operator
begin_operator
pick-up b2 b1
0
4
0 0 -1 0
0 1 0 1
0 3 0 1
0 5 1 0
0
end_operator
begin_operator
pick-up b2 b1
2
1 0
3 0
2
0 0 -1 0
0 5 1 4
0
end_operator
begin_operator
pick-up b2 b3
0
4
0 1 0 1
0 2 -1 0
0 3 0 1
0 5 3 0
0
end_operator
begin_operator
pick-up b2 b3
2
1 0
3 0
2
0 2 -1 0
0 5 3 4
0
end_operator
begin_operator
pick-up b3 b1
0
4
0 0 -1 0
0 2 0 1
0 3 0 1
0 6 1 0
0
end_operator
begin_operator
pick-up b3 b1
2
2 0
3 0
2
0 0 -1 0
0 6 1 4
0
end_operator
begin_operator
pick-up b3 b2
0
4
0 1 -1 0
0 2 0 1
0 3 0 1
0 6 2 0
0
end_operator
begin_operator
pick-up b3 b2
2
2 0
3 0
2
0 1 -1 0
0 6 2 4
0
end_operator
begin_operator
pick-up-from-table b1
1
0 0
2
0 3 0 1
0 4 4 0
0
end_operator
begin_operator
pick-up-from-table b2
1
1 0
2
0 3 0 1
0 5 4 0
0
end_operator
begin_operator
pick-up-from-table b3
1
2 0
2
0 3 0 1
0 6 4 0
0
end_operator
begin_operator
put-down b1
0
3
0 0 -1 0
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-down b2
0
3
0 1 -1 0
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-down b3
0
3
0 2 -1 0
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-on-block b1 b1
1
0 0
2
0 3 -1 0
0 4 0 1
0
end_operator
begin_operator
put-on-block b1 b1
1
0 0
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-on-block b1 b2
0
4
0 0 -1 0
0 1 0 1
0 3 -1 0
0 4 0 2
0
end_operator
begin_operator
put-on-block b1 b2
1
1 0
3
0 0 -1 0
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-on-block b1 b3
0
4
0 0 -1 0
0 2 0 1
0 3 -1 0
0 4 0 3
0
end_operator
begin_operator
put-on-block b1 b3
1
2 0
3
0 0 -1 0
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-on-block b2 b1
0
4
0 0 0 1
0 1 -1 0
0 3 -1 0
0 5 0 1
0
end_operator
begin_operator
put-on-block b2 b1
1
0 0
3
0 1 -1 0
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-on-block b2 b2
1
1 0
2
0 3 -1 0
0 5 0 2
0
end_operator
begin_operator
put-on-block b2 b2
1
1 0
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-on-block b2 b3
0
4
0 1 -1 0
0 2 0 1
0 3 -1 0
0 5 0 3
0
end_operator
begin_operator
put-on-block b2 b3
1
2 0
3
0 1 -1 0
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-on-block b3 b1
0
4
0 0 0 1
0 2 -1 0
0 3 -1 0
0 6 0 1
0
end_operator
begin_operator
put-on-block b3 b1
1
0 0
3
0 2 -1 0
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-on-block b3 b2
0
4
0 1 0 1
0 2 -1 0
0 3 -1 0
0 6 0 2
0
end_operator
begin_operator
put-on-block b3 b2
1
1 0
3
0 2 -1 0
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-on-block b3 b3
1
2 0
2
0 3 -1 0
0 6 0 3
0
end_operator
begin_operator
put-on-block b3 b3
1
2 0
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-down b1 b2
1
4 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-down b1 b3
1
4 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-down b2 b1
1
5 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-down b2 b3
1
5 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-down b3 b1
1
6 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-down b3 b2
1
6 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b2 b1
2
0 0
4 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b2 b1
1
4 2
3
0 0 0 1
0 3 -1 0
0 5 0 1
0
end_operator
begin_operator
put-tower-on-block b1 b2 b2
2
1 0
4 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b2 b2
1
4 2
3
0 1 0 1
0 3 -1 0
0 5 0 2
0
end_operator
begin_operator
put-tower-on-block b1 b2 b3
2
2 0
4 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b2 b3
1
4 2
3
0 2 0 1
0 3 -1 0
0 5 0 3
0
end_operator
begin_operator
put-tower-on-block b1 b3 b1
2
0 0
4 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b3 b1
1
4 3
3
0 0 0 1
0 3 -1 0
0 6 0 1
0
end_operator
begin_operator
put-tower-on-block b1 b3 b2
2
1 0
4 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b3 b2
1
4 3
3
0 1 0 1
0 3 -1 0
0 6 0 2
0
end_operator
begin_operator
put-tower-on-block b1 b3 b3
2
2 0
4 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-on-block b1 b3 b3
1
4 3
3
0 2 0 1
0 3 -1 0
0 6 0 3
0
end_operator
begin_operator
put-tower-on-block b2 b1 b1
2
0 0
5 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-on-block b2 b1 b1
1
5 1
3
0 0 0 1
0 3 -1 0
0 4 0 1
0
end_operator
begin_operator
put-tower-on-block b2 b1 b2
2
1 0
5 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-on-block b2 b1 b2
1
5 1
3
0 1 0 1
0 3 -1 0
0 4 0 2
0
end_operator
begin_operator
put-tower-on-block b2 b1 b3
2
2 0
5 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-on-block b2 b1 b3
1
5 1
3
0 2 0 1
0 3 -1 0
0 4 0 3
0
end_operator
begin_operator
put-tower-on-block b2 b3 b1
2
0 0
5 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-on-block b2 b3 b1
1
5 3
3
0 0 0 1
0 3 -1 0
0 6 0 1
0
end_operator
begin_operator
put-tower-on-block b2 b3 b2
2
1 0
5 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-on-block b2 b3 b2
1
5 3
3
0 1 0 1
0 3 -1 0
0 6 0 2
0
end_operator
begin_operator
put-tower-on-block b2 b3 b3
2
2 0
5 3
2
0 3 -1 0
0 6 0 4
0
end_operator
begin_operator
put-tower-on-block b2 b3 b3
1
5 3
3
0 2 0 1
0 3 -1 0
0 6 0 3
0
end_operator
begin_operator
put-tower-on-block b3 b1 b1
2
0 0
6 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-on-block b3 b1 b1
1
6 1
3
0 0 0 1
0 3 -1 0
0 4 0 1
0
end_operator
begin_operator
put-tower-on-block b3 b1 b2
2
1 0
6 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-on-block b3 b1 b2
1
6 1
3
0 1 0 1
0 3 -1 0
0 4 0 2
0
end_operator
begin_operator
put-tower-on-block b3 b1 b3
2
2 0
6 1
2
0 3 -1 0
0 4 0 4
0
end_operator
begin_operator
put-tower-on-block b3 b1 b3
1
6 1
3
0 2 0 1
0 3 -1 0
0 4 0 3
0
end_operator
begin_operator
put-tower-on-block b3 b2 b1
2
0 0
6 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b3 b2 b1
1
6 2
3
0 0 0 1
0 3 -1 0
0 5 0 1
0
end_operator
begin_operator
put-tower-on-block b3 b2 b2
2
1 0
6 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b3 b2 b2
1
6 2
3
0 1 0 1
0 3 -1 0
0 5 0 2
0
end_operator
begin_operator
put-tower-on-block b3 b2 b3
2
2 0
6 2
2
0 3 -1 0
0 5 0 4
0
end_operator
begin_operator
put-tower-on-block b3 b2 b3
1
6 2
3
0 2 0 1
0 3 -1 0
0 5 0 3
0
end_operator
0
