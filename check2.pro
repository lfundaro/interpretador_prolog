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

check_rel(C,P) :- match_rel(C,abuelas(Y,X)) -> findall(P,abuela(P,X),P).
check_rel(C,P) :- match_rel(C,hijas(Y,X)) -> findall(P,hija(P,X),P).
check_rel(C,P) :- match_rel(C,nietas(Y,X)) -> findall(P,nieta(P,X),P).
check_rel(C,P) :- match_rel(C,hermanas(Y,X)) -> findall(P,hermana(P,X),P).
check_rel(C,P) :- match_rel(C,tias(Y,X)) -> findall(P,tia(P,X),P).
check_rel(C,P) :- match_rel(C,sobrinas(Y,X)) -> findall(P,sobrina(P,X),P).
check_rel(C,P) :- match_rel(C,cunadas(Y,X)) -> findall(P,cunada(P,X),P).

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

check_rel(C,P) :- match_rel(C,abuelos(Y,X)) -> findall(P,abuelo(P,X),P).
check_rel(C,P) :- match_rel(C,hijos(Y,X)) -> findall(P,hijo(P,X),P).
check_rel(C,P) :- match_rel(C,nietos(Y,X)) -> findall(P,nieto(P,X),P).
check_rel(C,P) :- match_rel(C,hermanos(Y,X)) -> findall(P,hermano(P,X),P).
check_rel(C,P) :- match_rel(C,tios(Y,X)) -> findall(P,tio(P,X),P).
check_rel(C,P) :- match_rel(C,sobrinos(Y,X)) -> findall(sobrino(P,X),P).
check_rel(C,P) :- match_rel(C,cunados(Y,X)) -> findall(P,cunado(P,X),P).


reverse2([],[]). 
reverse2([C|T],L):- reverse2(T,R), concaten(R,[C],L). 

concaten([],L,L). 
concaten([X|L1],L2,[X|L3]):- concaten(L1,L2,L3). 

recorrer([C|D],R) :- check_rel(C,R),recorrer(D,R).
recorrer([],R).

