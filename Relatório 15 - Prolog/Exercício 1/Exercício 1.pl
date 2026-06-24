%regra 
peça_crítica(P) :-
    componente(P, Energia, _),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.

%query teste 
% ?- peça_crítica(P).

%retorno 
% P = propulsor_ion ;
% P = modulo_suporte_vida
