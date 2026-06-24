%regra auxiliar
item_faltante(Hangar, Peca) :-
    possui(Hangar, _), 
    precisa(_, Peca),  
    \+ possui(Hangar, Peca).
    
%regra alvo
pode_montar(Hangar, Componente) :-
    possui(Hangar, _), 
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ (precisa(Componente, Requisito), item_faltante(Hangar, Requisito)).

%query 4
% ?- pode_montar(hangar_beta, Componente).

%retorno 4
% Componente = propulsor_ion ;
% Componente = dobra_espacial ;
% Componente = escudo_plasma ;
% Componente = ia_navegação ;
% Componente = scanner_deep_space ;
% Componente = android_reparo.

%query 5
% ?- pode_montar(hangar_gamma, ia_navegação).

% Retorno 5:
% false.
