go:-
write('1 : Addition'),nl,
write('2 : Substraction'),nl,
write('3 : Multipication'),nl,
write('4 : Divison'),nl,
write('5 : Exit'),nl,
write('Enter a choice'),nl,
read(A),
solve(A).

solve(A):-
A=1,
write('Enter any two number'),nl,
read(B),
read(C),
D is B+C,
write('Addition : '),write(D),nl,
go.

solve(A):-
A=2,
write('Enter any two number'),nl,
read(B),
read(C),
D is B-C,
write('Substraction : '),write(D),nl,
go.

solve(A):-
A=3,
write('Enter any two number'),nl,
read(B),
read(C),
D is B*C,
write('Multipication : '),write(D),nl,
go.

solve(A):-
A=4,
write('Enter any two number'),nl,
read(B),
read(C),
D is B/C,
write('Division : '),write(D),nl,
go.

solve(A):-
A=5,
write('Calculation is complete'),nl.
