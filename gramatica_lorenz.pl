
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


%RELACIONES USANDO LISTAS
%relacion(singular,femenino,X,Y,esEsposa(Y,X)) --> [esposa], {esposa(Y,X)}.
%relacion(singular,femenino,X,Y,esAbuela(Y,X)) --> [abuela],{abuela(Y,X)}.
%relacion(singular,femenino,X,Y,esMadre(Y,X)) --> [madre],{madre(Y,X)}.
%relacion(singular,femenino,X,Y,esHija(Y,X)) --> [hija],{hija(Y,X)}.
%relacion(singular,femenino,X,Y,esNieta(Y,X)) --> [nieta],{nieta(Y,X)}.
%relacion(singular,femenino,X,Y,esHermana(Y,X)) --> [hermana],{hermana(Y,X)}.
%relacion(singular,femenino,X,Y,esTia(Y,X)) --> [tia],{tia(Y,X)}.
%relacion(singular,femenino,X,Y,esSobrina(Y,X)) --> [sobrina],{sobrina(Y,X)}.
%relacion(singular,femenino,X,Y,esSuegra(Y,X)) --> [suegra],{suegra(Y,X)}.
%relacion(singular,femenino,X,Y,esCunada(Y,X)) --> [cunada],{cunada(Y,X)}.



%relacion(plural,femenino,X,Y,sonAbuelas(Y,X)) --> [abuelas],{abuelas(Y,X)}.
%relacion(plural,femenino,X,Y,sonHijas(Y,X)) --> [hijas],{hija(Y,X)}.
%relacion(plural,femenino,X,Y,sonNietas(Y,X)) --> [nietas],{nieta(Y,X)}.
%relacion(plural,femenino,X,Y,sonHermanas(Y,X)) --> [hermanas],{hermana(Y,X)}.
%relacion(plural,femenino,X,Y,sonTias(Y,X)) --> [tias],{hermano(Y,X)}.
%relacion(plural,femenino,X,Y,sonSobrinas(Y,X)) --> [sobrinas],{hermano(Y,X)}.
%relacion(plural,femenino,X,Y,sonCunadas(Y,X)) --> [cunadas],{hermano(Y,X)}.

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

%RELACIONES USANDO LISTAS
%relacion(singular,masculino,X,Y,esAbuelo(Y,X)) --> [abuelo],{abuelo(Y,X)}.
%relacion(singular,masculino,X,Y,esPadre(Y,X)) --> [padre],{padre(Y,X)}.
%relacion(singular,masculino,X,Y,esHijo(Y,X)) --> [hijo],{hijo(Y,X)}.
%relacion(singular,masculino,X,Y,esNieto(Y,X)) --> [nieto],{nieto(Y,X)}.
%relacion(singular,masculino,X,Y,esHermano(Y,X)) --> [hermano],{hermano(Y,X)}.
%relacion(singular,masculino,X,Y,esTio(Y,X)) --> [tio],{tio(Y,X)}.
%relacion(singular,masculino,X,Y,esSobrino(Y,X)) --> [sobrino],{sobrino(Y,X)}.
%relacion(singular,masculino,X,Y,esSuegro(Y,X)) --> [suegro],{suegro(Y,X)}.
%relacion(singular,masculino,X,Y,esCunado(Y,X)) --> [cunado],{cunado(Y,X)}.

% relacion(plural,masculino,X,Y) --> [abuelos],{abuelo(Y,X)}.
% relacion(plural,masculino,X,Y) --> [hijos],{hijo(Y,X)}.
% relacion(plural,masculino,X,Y) --> [nietos],{nieto(Y,X)}.
relacion(plural,masculino,X,Y) --> [hermanos],{hermano(Y,X)}.
% relacion(plural,masculino,X,Y) --> [tios],{hermano(Y,X)}.
% relacion(plural,masculino,X,Y) --> [sobrinos],{hermano(Y,X)}.
% Preguntar este caso
% relacion(plural,masculino,X,Y) --> [suegro],{hermano(Y,X)}.
% relacion(plural,masculino,X,Y) --> [cunados],{hermano(Y,X)}.

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










% zona muerta

%pregunta --> es_verdad,persona(X) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , [de] , persona(X) , [?], {write(Y)}.

%% Pregunta con es_verdad con recursion
%% Hace falta agregar genero a persona para hacer corresponder el 
%% genero del articulo con la persona
%% (LISTO!!)
%pregunta --> es_verdad , persona(X) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , relacion_rec , persona(X) , [?].


%No puedo hacer simbolo ¿ en consola
%pregunta --> [¿] , pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y) , [?], {write(Y)}.

%%Pregunta sin relacion recursiva
%pregunta --> pronom(N) , verbo(N) , articulo(N,G) , relacion(N,G,X,Y,_R) , [de] , persona(X) , [?], {write(R)}.
