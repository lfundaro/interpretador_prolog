%%check_rel(H,H).

match_rel(C,C).

check_rel(C,R) :- match_rel(C,esposa_aux(X,Y)) -> R = esposa(X,Y)



recorrer([C|D],R) :- check_rel(C,R),recorrer([D|E]).
recorrer([]).
