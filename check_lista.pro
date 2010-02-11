match_rel(C,C).

% Femenino singular
check_rel(C,P) :- match_rel(C,esposa(Y,X)) -> esposa(P,X).
check_rel(C,P) :- match_rel(C,abuela(Y,X)) -> abuela(P,X).
check_rel(C,P) :- match_rel(C,madre(Y,X)) -> madre(P,X).
check_rel(C,P) :- match_rel(C,hija(Y,X)) -> hija(P,X).
check_rel(C,P) :- match_rel(C,nieta(Y,X)) -> nieta(P,X).
check_rel(C,P) :- match_rel(C,hermana(Y,X)) -> hermana(P,X).
check_rel(C,P) :- match_rel(C,tia(Y,X)) -> tia(P,X).
check_rel(C,P) :- match_rel(C,sobrina(Y,X)) -> sobrina(P,X).
check_rel(C,P) :- match_rel(C,suegra(Y,X)) -> suegra(P,X).
check_rel(C,P) :- match_rel(C,cunada(Y,X)) -> cunada(P,X).

% Femenino plural 

check_rel(C,P) :- match_rel(C,abuelas(Y,X)) -> abuelas(P,X).
check_rel(C,P) :- match_rel(C,hijas(Y,X)) -> hijas(P,X).
check_rel(C,P) :- match_rel(C,nietas(Y,X)) -> nietas(P,X).
check_rel(C,P) :- match_rel(C,hermanas(Y,X)) -> hermanas(P,X).
check_rel(C,P) :- match_rel(C,tias(Y,X)) -> tias(P,X).
check_rel(C,P) :- match_rel(C,sobrinas(Y,X)) -> sobrinas(P,X).
check_rel(C,P) :- match_rel(C,cunadas(Y,X)) -> cunadas(P,X).

% Masculino singular

check_rel(C,P) :- match_rel(C,esposo(Y,X)) -> esposo(P,X).
check_rel(C,P) :- match_rel(C,abuelo(Y,X)) -> abuelo(P,X).
check_rel(C,P) :- match_rel(C,padre(Y,X)) -> padre(P,X).
check_rel(C,P) :- match_rel(C,hijo(Y,X)) -> hijo(P,X).
check_rel(C,P) :- match_rel(C,nieto(Y,X)) -> nieto(P,X).
check_rel(C,P) :- match_rel(C,hermano(Y,X)) -> hermano(P,X).
check_rel(C,P) :- match_rel(C,tio(Y,X)) -> tio(P,X).
check_rel(C,P) :- match_rel(C,sobrino(Y,X)) -> sobrino(P,X).
check_rel(C,P) :- match_rel(C,suegro(Y,X)) -> suegro(P,X).
check_rel(C,P) :- match_rel(C,cunado(Y,X)) -> cunado(P,X).

% Masculino plural

check_rel(C,P) :- match_rel(C,abuelos(Y,X)) -> abuelos(P,X).
check_rel(C,P) :- match_rel(C,hijos(Y,X)) -> hijos(P,X).
check_rel(C,P) :- match_rel(C,nietos(Y,X)) -> nietos(P,X).
check_rel(C,P) :- match_rel(C,hermanos(Y,X)) -> hermanos(P,X).
check_rel(C,P) :- match_rel(C,tios(Y,X)) -> tios(P,X).
check_rel(C,P) :- match_rel(C,sobrinos(Y,X)) -> sobrinos(P,X).
check_rel(C,P) :- match_rel(C,cunados(Y,X)) -> cunados(P,X).


recorrer([C|D],R) :- check_rel(C,R),recorrer(D).
recorrer([]).
