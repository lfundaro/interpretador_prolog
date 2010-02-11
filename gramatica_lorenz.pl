pronom(singular) --> [quien].
pronom(plural) --> [quienes].
es_verdad --> [es],[verdad],[que].
verbo(singular) --> [es].
verbo(plural) --> [son].
articulo(singular,femenino) --> [la].
articulo(plural,femenino) --> [las].
articulo(singular,masculino) --> [el].
articulo(plural,masculino) --> [los].

 
relacion(singular,femenino,A,B,esposa(B,A)) --> [esposa].
relacion(singular,femenino,A,B,abuela(B,A)) --> [abuela].
relacion(singular,femenino,A,B,madre(B,A)) --> [madre].
relacion(singular,femenino,A,B,hija(B,A)) --> [hija].
relacion(singular,femenino,A,B,nieta(B,A)) --> [nieta].%{nieta(Y,X)}.
relacion(singular,femenino,A,B,hermana(B,A)) --> [hermana].%,{hermana(Y,X)}.
relacion(singular,femenino,A,B,tia(B,A)) --> [tia].%{tia(Y,X)}.
relacion(singular,femenino,A,B,sobrina(B,A)) --> [sobrina].%,{sobrina(Y,X)}.
relacion(singular,femenino,A,B,suegra(B,A)) --> [suegra].%,{suegra(Y,X)}.
relacion(singular,femenino,A,B,cunada(B,A)) --> [cunada].%,{cunada(Y,X)}.

relacion(plural,femenino,A,B,abuelas(B,A)) --> [abuelas].%,{abuelas(Y,X)}.
relacion(plural,femenino,A,B,hijas(B,A)) --> [hijas].%{hijas(Y,X)}.
relacion(plural,femenino,A,B,nietas(B,A)) --> [nietas].%,{nietas(Y,X)}.
relacion(plural,femenino,A,B,hermanas(B,A)) --> [hermanas].%,{hermanas(Y,X)}.
relacion(plural,femenino,A,B,tias(B,A)) --> [tias].%,{tias(Y,X)}.
relacion(plural,femenino,A,B,sobrinas(B,A)) --> [sobrinas].%,{sobrinas(Y,X)}.
relacion(plural,femenino,A,B,cunadas(B,A)) --> [cunadas].%,{cunadas(Y,X)}.

relacion(singular,masculino,A,B,esposo(B,A)) --> [esposo].%{esposo(Y,X)}.
relacion(singular,masculino,A,B,abuelo(B,A)) --> [abuelo].%{abuelo(Y,X)}.
relacion(singular,masculino,A,B,padre(B,A)) --> [padre].%{padre(Y,X)}.
relacion(singular,masculino,A,B,hijo(B,A)) --> [hijo].%{hijo(Y,X)}.
relacion(singular,masculino,A,B,nieto(B,A)) --> [nieto].%{nieto(Y,X)}.
relacion(singular,masculino,A,B,hermano(B,A)) --> [hermano].%{hermano(Y,X)}.
relacion(singular,masculino,A,B,tio(B,A)) --> [tio].%{tio(Y,X)}.
relacion(singular,masculino,A,B,sobrino(B,A)) --> [sobrino].%{sobrino(Y,X)}.
relacion(singular,masculino,A,B,suegro(B,A)) --> [suegro].%{suegro(Y,X)}.
relacion(singular,masculino,A,B,cunado(B,A)) --> [cunado].%{cunado(Y,X)}.

relacion(plural,masculino,A,B,abuelos(B,A)) --> [abuelos].%,{abuelos(A,B)}.
relacion(plural,masculino,A,B,hijos(B,A)) --> [hijos].%,{setof(Y,hijos(Y,X),Z)}.
relacion(plural,masculino,A,B,nietos(B,A)) --> [nietos].%,{nietos(Y,X)}.
relacion(plural,masculino,A,B,hermanos(B,A)) --> [hermanos].%,{hermanos(Y,X)}.
relacion(plural,masculino,A,B,tios(B,A)) --> [tios].%,{tios(Y,X)}.
relacion(plural,masculino,A,B,sobrinos(B,A)) --> [sobrinos].%,{sobrinos(Y,X)}.
relacion(plural,masculino,A,B,cunados(B,A)) --> [cunados].%,{cunados(Y,X)}.
 
prepos_art(singular,femenino) --> [de],[la].
prepos_art(plural,femenino) --> [de],[las].
prepos_art(singular,masculino) --> [del].
prepos_art(plural,masculino) --> [de],[los].
prepos_senc --> [de].

persona(X) --> [X]. 


%%Pregunta con relacion recursiva

% Quien es
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , terminal(N,G,_X,Y,A), {recorrer(A,P),write(P)}.

% Es verdad
pregunta --> es_verdad, persona(Y), verbo(N), articulo(N,G),terminal(N,G,_X,Y,A).

% Forma sencilla
terminal(N,G,X,Y,[A]) --> relacion(N,G,X,Y,A), prepos_senc , persona(X) , [?].

% Forma recursiva 
terminal(N,G,X,Y,[A|B]) --> relacion(N,G,W,Y,A) , prepos_art(Nu,Ge), terminal(Nu,Ge,X,W,B).

