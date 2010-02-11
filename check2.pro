match_rel(C,C).

% Femenino singular
% check_rel(C,P) :-
% check_rel(C,P) :- 

% % Femenino plural 



% % Masculino singular



% % Masculino plural


concaten([],L,L). 
concaten([X|L1],L2,[X|L3]):- concaten(L1,L2,L3). 


reverse2([],[]). 
reverse2([C|T],L):- reverse2(T,R), concaten(R,[C],L). 


recorrer([C|D],R) :-

	match_rel(C,esposa(Y,X)) -> esposa(Y,X),recorrer(D,Y);
	match_rel(C,abuela(Y,X)) -> abuela(Y,X),recorrer(D,Y);
	match_rel(C,madre(Y,X)) -> madre(Y,X),recorrer(D,Y);
	match_rel(C,hija(Y,X)) -> hija(Y,X),recorrer(D,Y);
	match_rel(C,nieta(Y,X)) -> nieta(Y,X),recorrer(D,Y);
	match_rel(C,hermana(Y,X)) -> hermana(Y,X),recorrer(D,Y);
	match_rel(C,tia(Y,X)) -> tia(Y,X),recorrer(D,Y);
	match_rel(C,sobrina(Y,X)) -> sobrina(Y,X),recorrer(D,Y);
	match_rel(C,suegra(Y,X)) -> suegra(Y,X),recorrer(D,Y);
        match_rel(C,cunada(Y,X)) -> cunada(Y,X),recorrer(D,Y)    ;
	match_rel(C,abuelas(Y,X)) -> abuela(Y,X),recorrer(D,Y)   ;
	match_rel(C,hijas(Y,X)) -> hija(Y,X),recorrer(D,Y);
	match_rel(C,nietas(Y,X)) -> nieta(Y,X),recorrer(D,Y);
	match_rel(C,hermanas(Y,X)) -> hermana(Y,X),recorrer(D,Y);
	match_rel(C,tias(Y,X)) -> tia(Y,X),recorrer(D,Y);
	match_rel(C,sobrinas(Y,X)) -> sobrina(Y,X),recorrer(D,Y);
	match_rel(C,cunadas(Y,X)) -> cunada(Y,X),recorrer(D,Y);
	match_rel(C,esposo(Y,X)) -> esposo(Y,X),recorrer(D,Y);
	match_rel(C,abuelo(Y,X)) -> abuelo(Y,X),recorrer(D,Y);
	match_rel(C,padre(Y,X)) -> padre(Y,X),recorrer(D,Y);
	match_rel(C,hijo(Y,X)) ->  hijo(Y,X),recorrer(D,Y);
	match_rel(C,nieto(Y,X)) -> nieto(Y,X),recorrer(D,Y);
	match_rel(C,hermano(Y,X)) -> hermano(Y,X),recorrer(D,Y);
	match_rel(C,tio(Y,X)) -> tio(Y,X),recorrer(D,Y);
	match_rel(C,sobrino(Y,X)) -> sobrino(Y,X),recorrer(D,Y);
	match_rel(C,suegro(Y,X)) -> suegro(Y,X),recorrer(D,Y);
	match_rel(C,cunado(Y,X)) -> cunado(Y,X),recorrer(D,Y);
	match_rel(C,abuelos(Y,X)) -> abuelo(Y,X),recorrer(D,Y);
	match_rel(C,hijos(Y,X)) -> hijo(Y,X),recorrer(D,Y);
	match_rel(C,nietos(Y,X)) -> nieto(Y,X),recorrer(D,Y);
	match_rel(C,hermanos(Y,X)) -> hermano(Y,X),recorrer(D,Y);
	match_rel(C,tios(Y,X)) -> tio(Y,X),recorrer(D,Y);
	match_rel(C,sobrinos(Y,X)) -> sobrino(Y,X),recorrer(D,Y);
        match_rel(C,cunados(Y,X)) -> cunado(Y,X),recorrer(D,Y)  ;
        true.


recorrer([],R):- write(R).

