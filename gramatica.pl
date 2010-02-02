articulo(masc,sing) --> ['el'].
articulo(masc,plu) --> ['los'].
articulo(fem,sing) --> ['la'].
articulo(fem,plu) --> ['las'].
articulo(neu,sing) --> ['los'].

relacion(masc,sing) --> ['padre'].
relacion(masc,sing) --> ['abuelo'].
relacion(masc,sing) --> ['tio'].
relacion(masc,sing) --> ['hermano'].
relacion(masc,sing) --> ['hijo'].
relacion(masc,plu) --> ['abuelos'].
relacion(masc,plu) --> ['tios'].
relacion(masc,plu) --> ['hermanos'].
relacion(masc,plu) --> ['hijos'].
relacion(fem,sing) --> ['madre'].
relacion(fem,sing) --> ['abuela'].
relacion(fem,sing) --> ['tia'].
relacion(fem,sing) --> ['hermana'].
relacion(fem,sing) --> ['hija'].
relacion(fem,plu) --> ['abuelas'].
relacion(fem,plu) --> ['tias'].
relacion(fem,plu) --> ['hermanas'].
relacion(fem,plu) --> ['hijas'].

relacioncomp --> [].
relacioncomp --> rel1(S,D), relacion(S,D).


rel1(masc,sing) --> ['del'].
rel1(masc,plu) --> ['de'],['los'].
rel1(fem,sing) --> ['de']['la'].
rel1(fem,plu) --> ['de'],['las'].



verbo(sing) --> ['es'].
verbo(plu) --> ['son'].

preg(sing) --> ['quien'].
preg(plu) --> ['quienes'].

persona --> ['marion'].
persona --> ['carlitos'].


pregunta --> preguntaquien.
pregunta --> preguntaesvrd.

% Quien(es) es(son) articulo relacion de persona.
preguntaquien --> ['¿'],preg(D), verbo(D), articulo(S,D), relacioncomp, ['de'], persona, ['?'].

% Es verdad que persona es relacion de persona.
preguntaesvrd --> ['¿'],['es'], ['verdad'], ['que'], persona, verbo(D), relacioncomp, ['de'], persona, ['?'].


%relacion(S,D) 

