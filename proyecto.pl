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
<<<<<<< HEAD
persona(lili,masc).

=======
 
>>>>>>> 745fe62c4c792e31f9269c5561d846213bbd8011
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
madre(maria,lili).
madre(flora,maria).
madre(flora,ana).
 
 
esposo(richard,ana).
esposo(hyatt,lis).
esposo(arturo,maria).

esposa(X,Y) :- esposo(Y,X).

persona(X) :- persona(X,masc) ; persona(X,fem).

hermano(X,Y) :- persona(X,masc),((madre(Z,X), madre(Z,Y)) ; (padre(Z,X), padre(Z,Y))), X \= Y, !.

hermana(X,Y) :- persona(X,fem),((madre(Z,X), madre(Z,Y)) ; (padre(Z,X), padre(Z,Y))), X \= Y, !.

hermanos(X,Y) :- persona(X,masc),(((madre(Z,X), madre(Z,Y)) , (padre(W,X), padre(W,Y))) ; ((madre(Z,X),madre(Z,Y)), \+ (padre(W,X), padre(W,Y))); ((padre(W,X),padre(W,Y)) , \+ (madre(Z,X),madre(Z,Y)))), X \= Y.

hermanas(X,Y) :- persona(X,fem),(((madre(Z,X), madre(Z,Y)) , (padre(W,X), padre(W,Y))) ; ((madre(Z,X),madre(Z,Y)), \+ (padre(W,X), padre(W,Y))); ((padre(W,X),padre(W,Y)) , \+ (madre(Z,X),madre(Z,Y)))), X \= Y.

abuelo(X,Y) :- persona(X,masc), padre(X,Z), (padre(Z,Y); madre(Z,Y)), !.

abuelos(X,Y) :- persona(X,masc), (padre(X,Z), padre(Z,Y)) ; (padre(X,W), madre(W,Y)).

abuela(X,Y) :- persona(X,fem), madre(X,Z), (padre(Z,Y); madre(Z,Y)), !.

abuelas(X,Y) :- persona(X,fem), (madre(X,Z), madre(Z,Y)) ; (madre(X,W), padre(W,Y)).

hijo(X,Y) :- persona(X,masc),(padre(Y,X); madre(Y,X)), !.

hijos(X,Y) :- persona(X,masc),(padre(Y,X); madre(Y,X)).

hija(X,Y) :- persona(X,fem),(padre(Y,X); madre(Y,X)), !.

hijas(X,Y) :- persona(X,fem),(padre(Y,X); madre(Y,X)).

nieto(X,Y) :- hijo(X,Z), (hijo(Z,Y); hija(Z,Y)).

nietos(X,Y) :- (padre(Y,Z), hijos(X,Z)) ; (madre(Y,Z),hijos(X,Z)). 

nieta(X,Y) :- hija(X,Z), (hijo(Z,Y); hija(Z,Y)).

nietas(X,Y) :- padre(Y,Z);madre(Y,Z), hijas(X,Z).

tio(X,Y) :- hermano(X,Z), (padre(Z,Y); madre(Z,Y)), !.

tios(X,Y) :- hermanos(X,Z), (padre(Z,Y); madre(Z,Y)).

tia(X,Y) :- hermana(X,Z),(padre(Z,Y); madre(Z,Y)), !.

tias(X,Y) :- hermanas(X,Z),(padre(Z,Y); madre(Z,Y)).

sobrino(X,Y) :- hijo(X,Z), (hermano(Z,Y); hermana(Z,Y)), !.

sobrinos(X,Y) :- hijo(X,Z), (hermano(Z,Y); hermana(Z,Y)).

sobrina(X,Y) :- hija(X,Z), (hermano(Z,Y); hermana(Z,Y)), !.

sobrinas(X,Y) :- hijas(X,Z), (hermanos(Z,Y); hermanas(Z,Y)).

cunado(X,Y) :- (esposo(X,Z), (hermano(Y,Z); hermana(Z,Y))) ; (hermano(X,Z),(esposo(Z,Y);esposa(Z,Y))), !.

cunados(X,Y) :- (esposo(X,Z), (hermanos(Y,Z); hermanas(Z,Y))) ; (hermanos(X,Z),(esposo(Z,Y);esposa(Z,Y))).

cunada(X,Y) :- (esposa(X,Z), (hermano(Y,Z); hermana(Z,Y))) ; (hermana(X,Z),(esposo(Z,Y);esposa(Z,Y))), !.

cunadas(X,Y) :- (esposa(X,Z), (hermanos(Y,Z); hermanas(Z,Y))) ; (hermanas(X,Z),(esposo(Z,Y);esposa(Z,Y))).

suegro(X,Y) :- padre(X,Z), (esposo(Z,Y); esposa(Z,Y)).

suegra(X,Y) :- madre(X,Z), (esposo(Z,Y); esposa(Z,Y)).
