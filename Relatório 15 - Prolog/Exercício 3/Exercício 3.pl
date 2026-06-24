%regra auxiliar
item_faltante(Hangar, Peca) :-
    precisa(_, Peca), 
    \+ possui(Hangar, Peca). 

%regra alvo
pode_montar(Hangar, Componente) :-
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ (precisa(Componente, Requisito), item_faltante(Hangar, Requisito)).

%query 4
% ?- pode_montar(hangar_beta, Componente).

%retorno 4
% Componente = propulsor_ion;
% Componente = dobra_espacial;
% Componente = escudo_plasma;
% Componente = ia_navegação;
% Componente = scanner_deep_space;
% Componente = modulo_suporte_vida;
% Componente = cloaking_device;
% Componente = android_reparo.

%query 5
% ?- pode_montar(hangar_gamma, ia_navegação).

%retorno 5
% false.
