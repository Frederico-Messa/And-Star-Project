begin_version
3
end_version
begin_metric
0
end_metric
8
begin_variable
var0
-1
21
Atom is-focal-point(p11)
Atom is-focal-point(p12)
Atom is-focal-point(p13)
Atom is-focal-point(p21)
Atom is-focal-point(p22)
Atom is-focal-point(p23)
Atom is-focal-point(p31)
Atom is-focal-point(p32)
Atom is-focal-point(p33)
Atom is-focal-point(p41)
Atom is-focal-point(p42)
Atom is-focal-point(p43)
Atom is-focal-point(p51)
Atom is-focal-point(p52)
Atom is-focal-point(p53)
Atom is-focal-point(p61)
Atom is-focal-point(p62)
Atom is-focal-point(p63)
Atom is-focal-point(p71)
Atom is-focal-point(p72)
Atom is-focal-point(p73)
end_variable
begin_variable
var1
-1
2
Atom is-target(p13)
NegatedAtom is-target(p13)
end_variable
begin_variable
var2
-1
2
Atom is-target(p23)
NegatedAtom is-target(p23)
end_variable
begin_variable
var3
-1
2
Atom is-target(p42)
NegatedAtom is-target(p42)
end_variable
begin_variable
var4
-1
2
Atom is-target(p51)
NegatedAtom is-target(p51)
end_variable
begin_variable
var5
-1
2
Atom is-target(p53)
NegatedAtom is-target(p53)
end_variable
begin_variable
var6
-1
2
Atom is-target(p71)
NegatedAtom is-target(p71)
end_variable
begin_variable
var7
-1
2
Atom is-target(p72)
NegatedAtom is-target(p72)
end_variable
1
begin_mutex_group
21
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
0 18
0 19
0 20
end_mutex_group
begin_state
1
0
0
0
0
0
0
0
end_state
begin_goal
7
1 1
2 1
3 1
4 1
5 1
6 1
7 1
end_goal
63
begin_operator
slew p11 p21
0
1
0 0 0 3
0
end_operator
begin_operator
slew p11 p22 north-east
0
1
0 0 0 4
0
end_operator
begin_operator
slew p12 p21 south-east
0
1
0 0 1 3
0
end_operator
begin_operator
slew p12 p22
0
1
0 0 1 4
0
end_operator
begin_operator
slew p12 p23 north-east
0
1
0 0 1 5
0
end_operator
begin_operator
slew p13 p22 south-east
0
1
0 0 2 4
0
end_operator
begin_operator
slew p13 p23
0
1
0 0 2 5
0
end_operator
begin_operator
slew p21 p31
0
1
0 0 3 6
0
end_operator
begin_operator
slew p21 p32 north-east
0
1
0 0 3 7
0
end_operator
begin_operator
slew p22 p31 south-east
0
1
0 0 4 6
0
end_operator
begin_operator
slew p22 p32
0
1
0 0 4 7
0
end_operator
begin_operator
slew p22 p33 north-east
0
1
0 0 4 8
0
end_operator
begin_operator
slew p23 p32 south-east
0
1
0 0 5 7
0
end_operator
begin_operator
slew p23 p33
0
1
0 0 5 8
0
end_operator
begin_operator
slew p31 p41
0
1
0 0 6 9
0
end_operator
begin_operator
slew p31 p42 north-east
0
1
0 0 6 10
0
end_operator
begin_operator
slew p32 p41 south-east
0
1
0 0 7 9
0
end_operator
begin_operator
slew p32 p42
0
1
0 0 7 10
0
end_operator
begin_operator
slew p32 p43 north-east
0
1
0 0 7 11
0
end_operator
begin_operator
slew p33 p42 south-east
0
1
0 0 8 10
0
end_operator
begin_operator
slew p33 p43
0
1
0 0 8 11
0
end_operator
begin_operator
slew p41 p51
0
1
0 0 9 12
0
end_operator
begin_operator
slew p41 p52 north-east
0
1
0 0 9 13
0
end_operator
begin_operator
slew p42 p51 south-east
0
1
0 0 10 12
0
end_operator
begin_operator
slew p42 p52
0
1
0 0 10 13
0
end_operator
begin_operator
slew p42 p53 north-east
0
1
0 0 10 14
0
end_operator
begin_operator
slew p43 p52 south-east
0
1
0 0 11 13
0
end_operator
begin_operator
slew p43 p53
0
1
0 0 11 14
0
end_operator
begin_operator
slew p51 p61
0
1
0 0 12 15
0
end_operator
begin_operator
slew p51 p62 north-east
0
1
0 0 12 16
0
end_operator
begin_operator
slew p52 p61 south-east
0
1
0 0 13 15
0
end_operator
begin_operator
slew p52 p62
0
1
0 0 13 16
0
end_operator
begin_operator
slew p52 p63 north-east
0
1
0 0 13 17
0
end_operator
begin_operator
slew p53 p62 south-east
0
1
0 0 14 16
0
end_operator
begin_operator
slew p53 p63
0
1
0 0 14 17
0
end_operator
begin_operator
slew p61 p71
0
1
0 0 15 18
0
end_operator
begin_operator
slew p61 p72 north-east
0
1
0 0 15 19
0
end_operator
begin_operator
slew p62 p71 south-east
0
1
0 0 16 18
0
end_operator
begin_operator
slew p62 p72
0
1
0 0 16 19
0
end_operator
begin_operator
slew p62 p73 north-east
0
1
0 0 16 20
0
end_operator
begin_operator
slew p63 p72 south-east
0
1
0 0 17 19
0
end_operator
begin_operator
slew p63 p73
0
1
0 0 17 20
0
end_operator
begin_operator
slew p71 p11
0
1
0 0 18 0
0
end_operator
begin_operator
slew p71 p12 north-east
0
1
0 0 18 1
0
end_operator
begin_operator
slew p72 p11 south-east
0
1
0 0 19 0
0
end_operator
begin_operator
slew p72 p12
0
1
0 0 19 1
0
end_operator
begin_operator
slew p72 p13 north-east
0
1
0 0 19 2
0
end_operator
begin_operator
slew p73 p12 south-east
0
1
0 0 20 1
0
end_operator
begin_operator
slew p73 p13
0
1
0 0 20 2
0
end_operator
begin_operator
take-image p13 p23
0
2
0 0 2 5
0 1 0 1
0
end_operator
begin_operator
take-image p13 p23
1
1 0
1
0 0 2 5
0
end_operator
begin_operator
take-image p23 p33
0
2
0 0 5 8
0 2 0 1
0
end_operator
begin_operator
take-image p23 p33
1
2 0
1
0 0 5 8
0
end_operator
begin_operator
take-image p42 p52
0
2
0 0 10 13
0 3 0 1
0
end_operator
begin_operator
take-image p42 p52
1
3 0
1
0 0 10 13
0
end_operator
begin_operator
take-image p51 p61
0
2
0 0 12 15
0 4 0 1
0
end_operator
begin_operator
take-image p51 p61
1
4 0
1
0 0 12 15
0
end_operator
begin_operator
take-image p53 p63
0
2
0 0 14 17
0 5 0 1
0
end_operator
begin_operator
take-image p53 p63
1
5 0
1
0 0 14 17
0
end_operator
begin_operator
take-image p71 p11
0
2
0 0 18 0
0 6 0 1
0
end_operator
begin_operator
take-image p71 p11
1
6 0
1
0 0 18 0
0
end_operator
begin_operator
take-image p72 p12
0
2
0 0 19 1
0 7 0 1
0
end_operator
begin_operator
take-image p72 p12
1
7 0
1
0 0 19 1
0
end_operator
0
