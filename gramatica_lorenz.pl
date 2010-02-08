
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

relacion(plural,femenino,X,Y) --> [abuelas],{hermano(Y,X)}.
relacion(plural,femenino,X,Y) --> [hijas],{hermano(Y,X)}.
relacion(plural,femenino,X,Y) --> [nietas],{hermano(Y,X)}.
relacion(plural,femenino,X,Y) --> [hermanas],{hermano(Y,X)}.
relacion(plural,femenino,X,Y) --> [tias],{hermano(Y,X)}.
relacion(plural,femenino,X,Y) --> [sobrinas],{hermano(Y,X)}.
relacion(plural,femenino,X,Y) --> [cunadas],{hermano(Y,X)}.

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

relacion(plural,masculino,X,Y) --> [abuelos],{abuelo(Y,X)}.
relacion(plural,masculino,X,Y) --> [hijos],{hijo(Y,X)}.
relacion(plural,masculino,X,Y) --> [nietos],{nieto(Y,X)}.
relacion(plural,masculino,X,Y) --> [hermanos],{hermano(Y,X)}.
relacion(plural,masculino,X,Y) --> [tios],{hermano(Y,X)}.
relacion(plural,masculino,X,Y) --> [sobrinos],{hermano(Y,X)}.
%Preguntar este caso
%relacion(plural,masculino,X,Y) --> [suegro],{hermano(Y,X)}.
relacion(plural,masculino,X,Y) --> [cunados],{hermano(Y,X)}.

prepos_art(singular,femenino) --> [de],[la].
prepos_art(plural,femenino) --> [de],[las].
prepos_art(singular,masculino) --> [del].
prepos_art(plural,masculino) --> [de],[los].
prepos_senc --> [de].

persona(X) --> [X]. 

%No puedo hacer simbolo ¿ en consola
%pregunta --> [¿] , pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , [?], {write(Y)}.

%%Pregunta sin relacion recursiva
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , prepos_senc , persona(X) , [?], {write(Y)}.

%%Pregunta con relacion recursiva
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , relacion_rec , persona(X) , [?], {write(Y)} .

pregunta --> es_verdad,persona(G) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , [de] , persona(X) , [?], {write(Y)}.

%% Pregunta con es_verdad con recursion
%% Hace falta agregar genero a persona para hacer corresponder el 
%% genero del articulo con la persona
%% (LISTO!!)
pregunta --> es_verdad , persona(Gen) , verbo(Num) , articulo(Num,Gen) , relacion(Num,Gen) , relacion_rec , persona(_) , [?].

relacion_rec --> prepos_art(Num,Gen) , relacion(Num,Gen) , relacion_rec.

relacion_rec --> prepos_senc.






