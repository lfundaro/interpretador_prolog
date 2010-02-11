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

abuelo(X,Y) :- persona(X,masc), padre(X,Z), (padre(Z,Y); madre(W,Y)).

abuelos(X,Y) :- persona(X,masc), (padre(X,Z), padre(Z,Y)) ; (padre(X,W), madre(W,Y)).

abuela(X,Y) :- persona(X,fem), madre(X,Z), (padre(Z,Y); madre(W,Y)).

abuelas(X,Y) :- persona(X,fem), (madre(X,Z), madre(Z,Y)) ; (madre(X,W), padre(W,Y)).

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
