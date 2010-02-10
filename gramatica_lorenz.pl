pronom(singular) --> [quien].
pronom(plural) --> [quienes].
es_verdad --> [es],[verdad],[que].
verbo(singular) --> [es].
verbo(plural) --> [son].
articulo(singular,femenino) --> [la].
articulo(plural,femenino) --> [las].
articulo(singular,masculino) --> [el].
articulo(plural,masculino) --> [los].

%% <<<<<<< HEAD
%% relacion(singular,femenino) --> [esposa].
%% relacion(singular,femenino) --> [abuela].
%% relacion(singular,femenino) --> [madre].
%% relacion(singular,femenino,X,Y,hija(X,Y)) --> [hija].
%% relacion(singular,femenino) --> [nieta].
%% relacion(singular,femenino) --> [hermana].
%% relacion(singular,femenino) --> [tia].
%% relacion(singular,femenino) --> [sobrina].
%% relacion(singular,femenino) --> [suegra].
%% relacion(singular,femenino) --> [cunada].

%% relacion(plural,femenino) --> [abuelas].
%% relacion(plural,femenino) --> [hijas].
%% relacion(plural,femenino) --> [nietas].
%% relacion(plural,femenino) --> [hermanas].
%% relacion(plural,femenino) --> [tias].
%% relacion(plural,femenino) --> [sobrinas].
%% relacion(plural,femenino) --> [cunadas].

%% relacion(singular,masculino) --> [esposo]. 
%% relacion(singular,masculino) --> [abuelo].
%% relacion(singular,masculino) --> [padre].
%% relacion(singular,masculino) --> [hijo].
%% relacion(singular,masculino) --> [nieto].
%% relacion(singular,masculino) --> [hermano].
%% relacion(singular,masculino) --> [tio].
%% relacion(singular,masculino) --> [sobrino].
%% relacion(singular,masculino) --> [suegro].
%% relacion(singular,masculino) --> [cunado].

%% relacion(plural,masculino) --> [abuelos].
%% relacion(plural,masculino) --> [hijos].
%% relacion(plural,masculino) --> [nietos].
%% relacion(plural,masculino) --> [hermanos].
%% relacion(plural,masculino) --> [tios].
%% relacion(plural,masculino) --> [sobrinos].
%% %Preguntar este caso
%% %relacion(plural,masculino) --> [suegro].
%% relacion(plural,masculino) --> [cunados].


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
%%Preguntar este caso
relacion(plural,masculino,X,Y) --> [suegros],{suegros(Y,X)}.
relacion(plural,masculino,X,Y) --> [cunados],{cunados(Y,X)}.




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
% relacion(plural,masculino,X,Y) --> [hermanos],{hermano(Y,X)}.
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

pregunta --> pronom(N) , verbo(N) , articulo(N,G) , terminal(N,G,X,Y), {write(Y)}.
%pregunta --> es_verdad, persona(X), verbo(N), articulo(N,G),terminal(N,G,X,Y), {write(Y)}.

terminal(N,G,X,Y) --> relacion(N,G,X,Y), prepos_senc , persona(X) , [?].
terminal(N,G,X,Y) --> relacion(N,G,W,Y) , prepos_art(Nu,Ge), terminal(Nu,Ge,X,W).


%terminal2(N,G,X,Y) --> relacion(N,G,X,Y),prepos_senc,persona(X),[?].
%terminal2(N,G,X,Y) --> relacion(N,G,X,Y),prepos_art(Nu,Ge),terminal2(Nu,Ge,X,W).

%rela_rec(N,G,X,Y,[A|B]) --> prepost_art(N,G), relacion(N,G,W,Y,A), terminal(Nu,Ge,X,W,B).


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
