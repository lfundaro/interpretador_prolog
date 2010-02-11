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
relacion(singular,femenino,A,B,nieta(B,A)) --> [nieta].
relacion(singular,femenino,A,B,hermana(B,A)) --> [hermana].
relacion(singular,femenino,A,B,tia(B,A)) --> [tia].
relacion(singular,femenino,A,B,sobrina(B,A)) --> [sobrina].
relacion(singular,femenino,A,B,suegra(B,A)) --> [suegra].
relacion(singular,femenino,A,B,cunada(B,A)) --> [cunada].

relacion(plural,femenino,A,B,abuelas(B,A)) --> [abuelas].
relacion(plural,femenino,A,B,hijas(B,A)) --> [hijas].
relacion(plural,femenino,A,B,nietas(B,A)) --> [nietas].
relacion(plural,femenino,A,B,hermanas(B,A)) --> [hermanas].
relacion(plural,femenino,A,B,tias(B,A)) --> [tias].
relacion(plural,femenino,A,B,sobrinas(B,A)) --> [sobrinas].
relacion(plural,femenino,A,B,cunadas(B,A)) --> [cunadas].

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

relacion(plural,masculino,A,B,abuelos(B,A)) --> [abuelos].
relacion(plural,masculino,A,B,hijos(B,A)) --> [hijos].
relacion(plural,masculino,A,B,nietos(B,A)) --> [nietos].
relacion(plural,masculino,A,B,hermanos(B,A)) --> [hermanos].
relacion(plural,masculino,A,B,tios(B,A)) --> [tios].
relacion(plural,masculino,A,B,sobrinos(B,A)) --> [sobrinos].
relacion(plural,masculino,A,B,cunados(B,A)) --> [cunados].
 
prepos_art(singular,femenino) --> [de],[la].
prepos_art(plural,femenino) --> [de],[las].
prepos_art(singular,masculino) --> [del].
prepos_art(plural,masculino) --> [de],[los].
prepos_senc --> [de].

persona(X) --> [X]. 


%%Pregunta con relacion recursiva

% Quien es
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , terminal(N,G,_X,Y,A), { reverse2(A,R), recorrer(R,P),write(P)}.

% Es verdad
pregunta --> es_verdad, persona(Y), verbo(N), articulo(N,G),terminal(N,G,_X,Y,A), { recorrer(A,P)}.

% Forma sencilla
terminal(N,G,X,Y,[A]) --> relacion(N,G,X,Y,A), prepos_senc , persona(X), [?].

% Forma recursiva 
terminal(N,G,X,Y,[A|B]) --> relacion(N,G,W,Y,A) , prepos_art(Nu,Ge), terminal(Nu,Ge,X,W,B).

