#!/bin/bash

INPUT=$(cat)

gap -q -A --bare << TOKEN
n := $1;;
g := Group($INPUT);;
o := Orbits(g, [1..n]);;

b := [];;
for i in [1..n] do
    for l in o do
        if (Length(l) = n - i) then
            Append(b, l);
        fi;
    od;
od;

sc := StabChain(g, b);;
bsc := BaseStabChain(sc);;

Display(Size(bsc));

for i in [1..Size(bsc)] do
    for j in [1..n] do
        if IsFixedStabilizer(sc, j) then
            Display(j);
        fi;
    od;
    Display(-1);
    Display(bsc[i]);
    t := sc.transversal;
    for j in [1..n] do
        if IsBound(t[j]) then
            Display(1);
            ir := InverseRepresentative(sc, j);;
            for k in [1..n] do
                Display(k^ir);
            od;
        else
            Display(0);
        fi;
    od;
    sc := sc.stabilizer;
od;
TOKEN
