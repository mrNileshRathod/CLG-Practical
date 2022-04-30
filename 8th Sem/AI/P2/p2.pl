parent(ram,dashrath).
parent(ram,kaushalya).
parent(lakshman,dashrath).
parent(lakshman,kaushalya).
parent(luv, ram).
parent(luv, seeta).
parent(kush,ram).
parent(kush,seeta).
male(dashrath).
male(ram).
male(lakshman).
male(luv).
male(kush).
female(kaushalya).
female(seeta).
female(urmila).
wife(dashrath,kaushalya).
wife(ram, seeta).
wife(lakshman,urmila).
 	

father(X,Y) :- parent(X,Y),male(Y).

mother(X,Y) :- parent(X,Y),female(Y).

grandparent(X,Y) :- parent(Z,Y),parent(X,Z).

paternalgrandfather(X,Y) :- father(Y,Z),father(Z,X).

sibling(X,Y) :- parent(X, Z), parent(Y, Z),X\=Y.

brothers(X,Y) :- sibling(X,Y),male(X),male(Y),X\=Y.

sisters(X,Y) :- sibling(X,Y),female(X),female(Y),X\=Y.

uncle(X,Y) :- father(X,F),brothers(F,Y).

aunt(X,Y) :- uncle(X,U), wife(U,Y).
