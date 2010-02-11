% Integrantes: 
% Lorenzo F. 06-39559
% Marion C. 06-39312
% I proyecto: Consultas en lenguaje natural 

%%%%%%%%%%%%%% GRAMATICA DEL PROYECTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Preguntas validas: quien, quienes, es verdad.
pronom(singular) --> [quien].
pronom(plural) --> [quienes].
es_verdad --> [es],[verdad],[que].

% Verbos permitidos: es, son.
verbo(singular) --> [es].
verbo(plural) --> [son].

% Articulos permitidos: la, las, el, los.
articulo(singular,femenino) --> [la].
articulo(plural,femenino) --> [las].
articulo(singular,masculino) --> [el].
articulo(plural,masculino) --> [los].

% Preposiciones de los articulos permitidos: de la, de las, del, de los.
prepos_art(singular,femenino) --> [de],[la].
prepos_art(plural,femenino) --> [de],[las].
prepos_art(singular,masculino) --> [del].
prepos_art(plural,masculino) --> [de],[los].
prepos_senc --> [de].

persona(X) --> [X]. 

 
% Relaciones existentes: 
% Femenino:

% Singular
relacion(singular,femenino,A,B,esposa(B,A)) --> [esposa].
relacion(singular,femenino,A,B,abuela(B,A)) --> [abuela].
relacion(singular,femenino,A,B,madre(B,A)) --> [madre].
relacion(singular,femenino,A,B,hija(B,A)) --> [hija].
relacion(singular,femenino,A,B,nieta(B,A)) --> [nieta].
relacion(singular,femenino,A,B,hermana(B,A)) --> [hermana].
relacion(singular,femenino,A,B,tia(B,A)) --> [tia].
relacion(singular,femenino,A,B,sobrina(B,A)) --> [sobrina].
relacion(singular,femenino,A,B,suegra(B,A)) --> [suegra].
relacion(singular,femenino,A,B,cunada(B,A)) --> [cunada].

% Plural
relacion(plural,femenino,A,B,abuelas(B,A)) --> [abuelas].
relacion(plural,femenino,A,B,hijas(B,A)) --> [hijas].
relacion(plural,femenino,A,B,nietas(B,A)) --> [nietas].
relacion(plural,femenino,A,B,hermanas(B,A)) --> [hermanas].
relacion(plural,femenino,A,B,tias(B,A)) --> [tias].
relacion(plural,femenino,A,B,sobrinas(B,A)) --> [sobrinas].
relacion(plural,femenino,A,B,cunadas(B,A)) --> [cunadas].

% Masculinas:
% Singular
relacion(singular,masculino,A,B,esposo(B,A)) --> [esposo].
relacion(singular,masculino,A,B,abuelo(B,A)) --> [abuelo].
relacion(singular,masculino,A,B,padre(B,A)) --> [padre].
relacion(singular,masculino,A,B,hijo(B,A)) --> [hijo].
relacion(singular,masculino,A,B,nieto(B,A)) --> [nieto].
relacion(singular,masculino,A,B,hermano(B,A)) --> [hermano].
relacion(singular,masculino,A,B,tio(B,A)) --> [tio].
relacion(singular,masculino,A,B,sobrino(B,A)) --> [sobrino].
relacion(singular,masculino,A,B,suegro(B,A)) --> [suegro].
relacion(singular,masculino,A,B,cunado(B,A)) --> [cunado].

% Plural
relacion(plural,masculino,A,B,abuelos(B,A)) --> [abuelos].
relacion(plural,masculino,A,B,hijos(B,A)) --> [hijos].
relacion(plural,masculino,A,B,nietos(B,A)) --> [nietos].
relacion(plural,masculino,A,B,hermanos(B,A)) --> [hermanos].
relacion(plural,masculino,A,B,tios(B,A)) --> [tios].
relacion(plural,masculino,A,B,sobrinos(B,A)) --> [sobrinos].
relacion(plural,masculino,A,B,cunados(B,A)) --> [cunados].
 


%%Pregunta con relacion recursiva

% Quien es
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , terminal(N,G,_X,_Y,A), {reverse2(A,R), recorrer(R,_P)}.

% Es verdad
pregunta --> es_verdad, persona(Y), verbo(N), articulo(N,G),terminal(N,G,_X,Y,_A),{ recorrer(_R,_P)}.

% Forma sencilla, usada por la pregunta quien es y es verdad.
terminal(N,G,X,Y,[A]) --> relacion(N,G,X,Y,A), prepos_senc , persona(X) , [?].

% Forma recursiva, usada por la pregunta quien es y es verdad. 
terminal(N,G,X,Y,[A|B]) --> relacion(N,G,W,Y,A) , prepos_art(Nu,Ge), terminal(Nu,Ge,X,W,B).


%%%%%%%%%%%%%%%% RELACIONES Y BASE DE DATO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

persona(marion,fem).
persona(martin,masc).
persona(marcel,masc).
persona(maria,fem).
persona(arturo,masc).
persona(ana,fem).
persona(richard,masc).
persona(cris,masc).
persona(hyatt,masc).
persona(alex,masc).
persona(flora,fem).
persona(antonio,masc).
persona(lis,fem).
persona(lili,fem).
persona(ramon,masc).


padre(richard,alex).
padre(richard,cris).
padre(richard,hyatt).
padre(antonio,maria).
padre(antonio,ana).
padre(ramon,arturo).
padre(arturo,marion).
padre(arturo,marcel).
padre(arturo,martin).
 
madre(ana,alex).
madre(ana,cris).
madre(ana,hyatt).
madre(maria,marion).
madre(maria,martin).
madre(maria,marcel).
madre(maria,lili).
madre(flora,maria).
madre(flora,ana).

esposo(richard,ana).
esposo(hyatt,lis).
esposo(arturo,maria).

% Hechos: 

esposa(X,Y) :- esposo(Y,X).

persona(X) :- persona(X,masc) ; persona(X,fem).

%Hermanos por ambos.
her_ambos(X,Y) :- (padre(Z,X),padre(Z,Y)), (madre(W,X), madre(W,Y)), X \= Y.

% Hermanos por parte de papa.
her_padre(X,Y) :- (padre(Z,X),padre(Z,Y)), \+ (madre(W,X), madre(W,Y)), X \= Y.

% Hermanos por parte de madre.
her_madre(X,Y) :- \+ (padre(Z,X),padre(Z,Y)), (madre(W,X), madre(W,Y)), X \= Y.

% Hermano: Para evitar repeticiones se establecio la relacion hermano en de forma exclusiva.
hermano(X,Y) :-  persona(X,masc), ( her_padre(X,Y) ; her_madre(X,Y) ; her_ambos(X,Y)).

hermana(X,Y) :-  persona(X,fem), ( her_padre(X,Y) ; her_madre(X,Y) ; her_ambos(X,Y)).

abuelo(X,Y) :- persona(X,masc), padre(X,Z), (padre(Z,Y); madre(Z,Y)).

abuela(X,Y) :- persona(X,fem), madre(X,Z), (padre(Z,Y); madre(Z,Y)).

hijo(X,Y) :- persona(X,masc),(padre(Y,X); madre(Y,X)).

hija(X,Y) :- persona(X,fem),(padre(Y,X); madre(Y,X)).

nieto(X,Y) :- hijos(X,Z), (hijos(Z,Y); hijas(Z,Y)).

nieta(X,Y) :- hijas(X,Z), (hijos(Z,Y); hijas(Z,Y)).

tio(X,Y) :- hermanos(X,Z), (padre(Z,Y); madre(Z,Y)).

tia(X,Y) :- hermanas(X,Z),(padre(Z,Y); madre(Z,Y)).

sobrino(X,Y) :- hijos(X,Z), (hermanos(Z,Y); hermanas(Z,Y)).

sobrina(X,Y) :- hijas(X,Z), (hermanos(Z,Y); hermanas(Z,Y)).

cunado(X,Y) :- (esposo(X,Z), (hermanos(Y,Z); hermanas(Z,Y))) ; (hermanos(X,Z),(esposos(Z,Y);esposas(Z,Y))).

cunada(X,Y) :- (esposa(X,Z), (hermanos(Y,Z); hermanas(Z,Y))) ; (hermanas(X,Z),(esposo(Z,Y);esposa(Z,Y))).

suegro(X,Y) :- padre(X,Z), (esposo(Z,Y); esposa(Z,Y)).

suegra(X,Y) :- madre(X,Z), (esposo(Z,Y); esposa(Z,Y)).


%%%%%%%%%% FUNCIONES A UTILIZAR %%%%%%%%%%%%%%%%%%%

% Funcion para verificar que relacion se esta evaluando.
match_rel(C,C).

% Funcion para concatenar dos listas.
concaten([],L,L). 
concaten([X|L1],L2,[X|L3]):- concaten(L1,L2,L3). 

% Funcion para invertir una lista.
reverse2([],[]). 
reverse2([C|T],L):- reverse2(T,R), concaten(R,[C],L). 


recorrer([C|D],R) :-

	% Relaciones singulares femeninas.
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
	
	% Relaciones plurales femeninas.
	match_rel(C,abuelas(Y,X)) -> findall(Z,abuela(Z,X),Y),recorrer(D,Y)   ;
	match_rel(C,hijas(Y,X)) -> findall(Z,hija(Z,X),Y),recorrer(D,Y);
	match_rel(C,nietas(Y,X)) -> findall(Z,nieta(Z,X),Y),recorrer(D,Y);
	match_rel(C,hermanas(Y,X)) -> findall(Z,hermana(Z,X),Y),recorrer(D,Y);
	match_rel(C,tias(Y,X)) ->findall(Z,tia(Z,X),Y),recorrer(D,Y);
	match_rel(C,sobrinas(Y,X)) -> findall(Z,sobrina(Z,X),Y),recorrer(D,Y);
	match_rel(C,cunadas(Y,X)) -> findall(Z,cunada(Z,X),Y),recorrer(D,Y);
	
	% Relaciones singulares masculinas.
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
	
	% Relaciones plurales masculinas.
	match_rel(C,abuelos(Y,X)) -> findall(Z,abuelo(Z,X),Y),recorrer(D,Y);
	match_rel(C,hijos(Y,X)) ->findall(Z,hijo(Z,X),Y),recorrer(D,Y);
	match_rel(C,nietos(Y,X)) -> findall(Z,nieto(Z,X),Y),recorrer(D,Y);
	match_rel(C,hermanos(Y,X)) -> findall(Z,hermano(Z,X),Y),recorrer(D,Y);
	match_rel(C,tios(Y,X)) -> findall(Z,hermano(Z,X),Y),recorrer(D,Y);
	match_rel(C,sobrinos(Y,X)) -> findall(Z,sobrino(Z,X),Y),recorrer(D,Y);
    match_rel(C,cunados(Y,X)) -> findall(Z,cunado(Z,X),Y),recorrer(D,Y)  ;
    true.

recorrer([],R):- write(R).



