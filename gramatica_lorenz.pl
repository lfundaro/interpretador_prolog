pronom(singular) --> [quien].
pronom(plural) --> [quienes].
es_verdad --> [es],[verdad],[que].
verbo(singular) --> [es].
verbo(plural) --> [son].
articulo(singular,femenino) --> [la].
articulo(plural,femenino) --> [las].
articulo(singular,masculino) --> [el].
articulo(plural,masculino) --> [los].

relacion(singular,femenino) --> [esposa].
relacion(singular,femenino) --> [abuela].
relacion(singular,femenino) --> [madre].
relacion(singular,femenino,X,Y,hija(X,Y)) --> [hija].
relacion(singular,femenino) --> [nieta].
relacion(singular,femenino) --> [hermana].
relacion(singular,femenino) --> [tia].
relacion(singular,femenino) --> [sobrina].
relacion(singular,femenino) --> [suegra].
relacion(singular,femenino) --> [cunada].

relacion(plural,femenino) --> [abuelas].
relacion(plural,femenino) --> [hijas].
relacion(plural,femenino) --> [nietas].
relacion(plural,femenino) --> [hermanas].
relacion(plural,femenino) --> [tias].
relacion(plural,femenino) --> [sobrinas].
relacion(plural,femenino) --> [cunadas].

relacion(singular,masculino) --> [esposo]. 
relacion(singular,masculino) --> [abuelo].
relacion(singular,masculino) --> [padre].
relacion(singular,masculino) --> [hijo].
relacion(singular,masculino) --> [nieto].
relacion(singular,masculino) --> [hermano].
relacion(singular,masculino) --> [tio].
relacion(singular,masculino) --> [sobrino].
relacion(singular,masculino) --> [suegro].
relacion(singular,masculino) --> [cunado].

relacion(plural,masculino) --> [abuelos].
relacion(plural,masculino) --> [hijos].
relacion(plural,masculino) --> [nietos].
relacion(plural,masculino) --> [hermanos].
relacion(plural,masculino) --> [tios].
relacion(plural,masculino) --> [sobrinos].
%Preguntar este caso
%relacion(plural,masculino) --> [suegro].
relacion(plural,masculino) --> [cunados].

prepos_art(singular,femenino) --> [de],[la].
prepos_art(plural,femenino) --> [de],[las].
prepos_art(singular,masculino) --> [del].
prepos_art(plural,masculino) --> [de],[los].
prepos_senc --> [de].

persona(masculino) --> [antonio].
persona(femenino) --> [marion].

%No puedo hacer simbolo ¿ en consola
%pregunta --> [¿] , pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G) , [?].

%%Pregunta sin relacion recursiva
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G) , prepos_senc , persona(_) , [?].

%%Pregunta con relacion recursiva
pregunta --> pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G,_,) , relacion_rec , persona(_,G) , [?], {(_,}.

pregunta --> es_verdad,persona(G) , verbo(N) , articulo(N,G) , relacion(N,G) , [de] , persona(G) , [?].

pregunta --> es_verdad , persona(Gen) , verbo(Num) , articulo(Num,Gen) , relacion(Num,Gen) , relacion_rec , persona(_) , [?].

relacion_rec --> prepos_art(Num2,Gen2) , relacion(Num2,Gen2) , relacion_rec.

relacion_rec --> prepos_senc.






