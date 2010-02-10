pronom(singular) --> [quien].
pronom(plural) --> [quienes].
es_verdad --> [es],[verdad],[que].
verbo(singular) --> [es].
verbo(plural) --> [son].
articulo(singular,femenino) --> [la].
articulo(plural,femenino) --> [las].
articulo(singular,masculino) --> [el].
articulo(plural,masculino) --> [los].


relacion(singular,femenino,X,Y) --> [esposa], {esposa(Y,X)}.
relacion(singular,femenino,X,Y) --> [abuela],{abuela(Y,X)}.
relacion(singular,femenino,X,Y) --> [madre],{madre(Y,X)}.
relacion(singular,femenino,X,Y) --> [hija],{hija(Y,X)}.
relacion(singular,femenino,X,Y) --> [nieta],{nieta(Y,X)}.
relacion(singular,femenino,X,Y) --> [hermana],{hermana(Y,X)}.
relacion(singular,femenino,X,Y) --> [tia],{tia(Y,X)}.
relacion(singular,femenino,X,Y) --> [sobrina],{sobrina(Y,X)}.
relacion(singular,femenino,X,Y) --> [suegra],{suegra(Y,X)}.
relacion(singular,femenino,X,Y) --> [cunada],{cunada(Y,X)}.

relacion(plural,femenino,X,Y) --> [abuelas],{abuelas(Y,X)}.
relacion(plural,femenino,X,Y) --> [hijas],{hijas(Y,X)}.
relacion(plural,femenino,X,Y) --> [nietas],{nietas(Y,X)}.
relacion(plural,femenino,X,Y) --> [hermanas],{hermanas(Y,X)}.
relacion(plural,femenino,X,Y) --> [tias],{tias(Y,X)}.
relacion(plural,femenino,X,Y) --> [sobrinas],{sobrinas(Y,X)}.
relacion(plural,femenino,X,Y) --> [cunadas],{cunadas(Y,X)}.

relacion(singular,masculino,X,Y) --> [esposo],{esposo(Y,X)}.
relacion(singular,masculino,X,Y) --> [abuelo],{abuelo(Y,X)}.
relacion(singular,masculino,X,Y) --> [padre],{padre(Y,X)}.
relacion(singular,masculino,X,Y) --> [hijo],{hijo(Y,X)}.
relacion(singular,masculino,X,Y) --> [nieto],{nieto(Y,X)}.
relacion(singular,masculino,X,Y) --> [hermano],{hermano(Y,X)}.
relacion(singular,masculino,X,Y) --> [tio],{tio(Y,X)}.
relacion(singular,masculino,X,Y) --> [sobrino],{sobrino(Y,X)}.
relacion(singular,masculino,X,Y) --> [suegro],{suegro(Y,X)}.
relacion(singular,masculino,X,Y) --> [cunado],{cunado(Y,X)}.

relacion(plural,masculino,X,Y) --> [abuelos],{abuelos(Y,X)}.
relacion(plural,masculino,X,Y) --> [hijos],{hijos(Y,X)}.
relacion(plural,masculino,X,Y) --> [nietos],{nietos(Y,X)}.
relacion(plural,masculino,X,Y) --> [hermanos],{hermanos(Y,X)}.
relacion(plural,masculino,X,Y) --> [tios],{tios(Y,X)}.
relacion(plural,masculino,X,Y) --> [sobrinos],{sobrinos(Y,X)}.
relacion(plural,masculino,X,Y) --> [cunados],{cunados(Y,X)}.

prepos_art(singular,femenino) --> [de],[la].
prepos_art(plural,femenino) --> [de],[las].
prepos_art(singular,masculino) --> [del].
prepos_art(plural,masculino) --> [de],[los].
prepos_senc --> [de].

persona(X) --> [X]. 

%%Pregunta con relacion recursiva

% Quien es
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , terminal(N,G,_X,Y), {write(Y),nl,fail}.

% Es verdad
pregunta --> es_verdad, persona(Y), verbo(N), articulo(N,G),terminal(N,G,_X,Y).

% Forma sencilla
terminal(N,G,X,Y) --> relacion(N,G,X,Y), prepos_senc , persona(X) , [?].

% Forma recursiva 
terminal(N,G,X,Y) --> relacion(N,G,W,Y) , prepos_art(Nu,Ge), terminal(Nu,Ge,X,W).

