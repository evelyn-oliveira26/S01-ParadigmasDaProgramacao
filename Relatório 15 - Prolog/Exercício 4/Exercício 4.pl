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
% Categoria = fundamental,
% P = reator_fusao;
% Categoria = sistemas,
% P = modulo_suporte_vida;
% Categoria = defesa,
% P = cloaking_device.
