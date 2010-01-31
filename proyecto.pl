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

padre(richard,alex).
padre(richard,cris).
padre(richard,hyatt).
padre(antonio,maria).
padre(antonio,ana).
padre(arturo,marion).
padre(arturo,marcel).
padre(arturo,martin).

madre(ana,alex).
madre(ana,cris).
madre(ana,hyatt).
madre(maria,marion).
madre(maria,martin).
madre(maria,marcel).
madre(flora,maria).
madre(flora,ana).


esposo(richard,ana).
esposo(hyatt,lis).
esposo(arturo,maria).



esposa(X,Y) :- esposo(Y,X).

hermano(X,Y) :- persona(X,masc),((madre(Z,X), madre(Z,Y)) ; (padre(Z,X), padre(Z,Y))), X \= Y.

hermana(X,Y) :- persona(X,fem),((madre(Z,X), madre(Z,Y)) ; (padre(Z,X), padre(Z,Y))), X \= Y.

abuelo(X,Y) :- persona(X,masc), padre(X,Z), (padre(Z,Y); madre(Z,Y)).

abuela(X,Y) :- persona(X,fem), madre(X,Z), (padre(Z,Y); madre(Z,Y)).

hijo(X,Y) :- persona(X,masc),(padre(Y,X); madre(Y,X)).

hija(X,Y) :- persona(X,fem),(padre(Y,X); madre(Y,X)).

nieto(X,Y) :- hijo(X,Z), (hijo(Z,Y); hija(Z,Y)).

nieta(X,Y) :- hija(X,Z), (hijo(Z,Y); hija(Z,Y)).

tio(X,Y) :- hermano(X,Z), (padre(Z,Y); madre(Z,Y)).

tia(X,Y) :- hermana(X,Z),(padre(Z,Y); madre(Z,Y)).

sobrino(X,Y) :- hijo(X,Z), (hermano(Z,Y); hermana(Z,Y)).

sobrina(X,Y) :- hija(X,Z), (hermano(Z,Y); hermana(Z,Y)).

cunado(X,Y) :- (esposo(X,Z), (hermano(Y,Z); hermana(Z,Y))) ; (hermano(X,Z),(esposo(Z,Y);esposa(Z,Y))).

cunada(X,Y) :- (esposa(X,Z), (hermano(Y,Z); hermana(Z,Y))) ; (hermana(X,Z),(esposo(Z,Y);esposa(Z,Y))).

suegro(X,Y) :- padre(X,Z), (esposo(Z,Y); esposa(Z,Y)).

suegra(X,Y) :- madre(X,Z), (esposo(Z,Y); esposa(Z,Y)).
