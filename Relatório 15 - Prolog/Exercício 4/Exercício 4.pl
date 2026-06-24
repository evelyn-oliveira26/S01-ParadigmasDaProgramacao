%regra 1
peça_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, _).

%regra 2
peça_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).

%query 6
% ?- peça_raiz(P), componente(P, _, Categoria), Categoria \= propulsao.

%retorno 6
% P = reator_fusao;
% P = modulo_suporte_vida.
