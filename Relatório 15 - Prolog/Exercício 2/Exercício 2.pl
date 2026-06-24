%regra 1
hangar_combate(H) :-
    possui(H, P1),
    componente(P1, _, combate),
    possui(H, P2),
    componente(P2, _, combate),
    P1 \= P2.

%regra 2
falta_energia(H) :-
    possui(H, _),
    \+ (possui(H, P), componente(P, _, propulsao)).

%query teste
% ?- hangar_combate(H), falta_energia(H).

%retorno 
% false.
