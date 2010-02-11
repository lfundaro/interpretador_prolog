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
persona(gabriela,fem).

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
madre(flora,gabriela). 
 
esposo(richard,ana).
esposo(hyatt,lis).
esposo(arturo,maria).

esposa(X,Y) :- esposo(Y,X).

persona(X) :- persona(X,masc) ; persona(X,fem).

her_padre(X,Y) :- (padre(Z,X),padre(Z,Y)), \+ (madre(W,X), madre(W,Y)), X \= Y.

her_madre(X,Y) :- \+ (padre(Z,X),padre(Z,Y)), (madre(W,X), madre(W,Y)), X \= Y.

her_ambos(X,Y) :- (padre(Z,X),padre(Z,Y)), (madre(W,X), madre(W,Y)), X \= Y.

% hermano(X,Y) :- persona(X,masc),((madre(Z,X), madre(Z,Y)) ; (padre(Z,X), padre(Z,Y))), X \= Y .

% hermana(X,Y) :- persona(X,fem),((madre(Z,X), madre(Z,Y)) ; (padre(Z,X), padre(Z,Y))), X \= Y.

hermano(X,Y) :-  persona(X,masc), ( her_padre(X,Y) ; her_madre(X,Y) ; her_ambos(X,Y)).

hermana(X,Y) :-  persona(X,fem), ( her_padre(X,Y) ; her_madre(X,Y) ; her_ambos(X,Y)).

%abuelo(X,Y) :- persona(X,masc), padre(X,Z), (padre(Z,Y); madre(W,Y)).

%abuelo(X,Y) :- persona(X,masc), padre(X,Z), ( ab_padre(Z,Y) ; ab_madre(Z,Y) ; ab_ambos(Z,Y)).

abuelo(X,Y) :- persona(X,masc), padre(X,Z), padre(Z,Y).

abuelo(X,Y) :- persona(X,masc), madre(X,Z), madre(Z,Y).

%% ab_padre(X,Y) :- padre(Z,Y) , \+ madre(Z,Y), X\=Y.

%% ab_madre(X,Y) :- madre(Z,Y) , \+ padre(Z,Y), X\=Y.

%% ab_ambos(X,Y) :- madre(Z,Y), padre(Z,Y), X\=Y.

%abuelos(X,Y) :- persona(X,masc), (padre(X,Z), padre(Z,Y)) ; (padre(X,W), madre(W,Y)).

abuela(X,Y) :- persona(X,fem), madre(X,Z), madre(Z,Y).

abuela(X,Y) :- persona(X,fem), padre(X,Z), padre(Z,Y).

%abuelas(X,Y) :- persona(X,fem), (madre(X,Z), madre(Z,Y)) ; (madre(X,W), padre(W,Y)).

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
