%regra (parte 1)
peça_crítica(P) :-
    componente(P, Energia, _),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.

%query teste 1
% ?- peça_crítica(P).

%retorno 1
% P = propulsor_ion ;
% P = modulo_suporte_vida.

%query teste 2 (parte 2)
% ?- componente(P, 6, sistemas), \+ precisa(_, P).

%retorno 2
% false.
