/*
  Reconocimiento o generación de frases en lenguaje natural.
*/

articulo(def,masc,sing) --> ['el'].
articulo(def,masc,plu) --> ['los'].
articulo(def,fem,sing) --> ['la'].
articulo(def,fem,plu) --> ['las'].
articulo(indef,masc,sing) --> ['un'].
articulo(indef,masc,plu) --> ['unos'].
articulo(indef,fem,sing) --> ['una'].
articulo(indef,fem,plu) --> ['unas'].
articulo(det,neu,sing) --> ['los'].

sustantivo(masc,sing) --> ['perro'].
sustantivo(fem,sing) --> ['perra'].

sustantivo(masc,plu) --> ['perros'].
sustantivo(fem,plu) --> ['perras'].
sustantivo(masc,sing) --> ['gato'].
sustantivo(fem,sing) --> ['gata'].
sustantivo(masc,plu) --> ['gatos'].
sustantivo(fem,plu) --> ['gatas'].

adjetivo(masc,sing) --> ['amarillo'].
adjetivo(masc,plu) --> ['amarillos'].
adjetivo(fem,sing) --> ['amarilla'].
adjetivo(fem,plu) --> ['amarillas'].
adjetivo(masc,sing) --> ['negro'].
adjetivo(masc,plu) --> ['negros'].
adjetivo(fem,sing) --> ['negra'].
adjetivo(fem,plu) --> ['negras'].

complemento(G,N) --> adjetivo(G,N).
complemento(G,N) --> [].

verbo(sing, pres, _) --> ['come'].
verbo(sing, pas, _) --> ['comió'].
verbo(sing, fut, _) --> ['comerá'].
verbo(plu, pres, _) --> ['comen'].
verbo(plu, pas, _) --> ['comieron'].
verbo(plu, fut, _) --> ['comerán'].
verbo(sing, pres, lug) --> ['duerme'].
verbo(sing, pas, lug) --> ['durmió'].
verbo(sing, fut, lug) --> ['dormirá'].
verbo(plu, pres, lug) --> ['duermen'].
verbo(plu, pas, lug) --> ['durmieron'].
verbo(plu, fut, lug) --> ['dormirán'].

predicado(suj) --> ['comida'].
predicado(lug) --> ['en', 'la', 'cama'].
predicado(_) --> [].

sujeto(D,G,N) --> articulo(D,G,N),sustantivo(G,N),complemento(G,N).

frase(D,G,N,T) --> sujeto(D,G,N),verbo(N,T,P), predicado(P).

% Ej, para ver todos los articulos indefinidos femeninos.
% articulo(indef, fem, D, L0, L).

% Ej, se obtienen algunos sujetos.
% sujeto(def,mas,N, L0, L1).

% Ej, la interrogación genera varias frases interesantes.
% frase(D, fem, sing, pres, L0, L).
