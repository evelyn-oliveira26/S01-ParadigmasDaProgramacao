%regra
especie_dominante(Animal) :-
    nicho(Animal, Nicho1),
    nicho(Animal, Nicho2),
    Nicho1 \= Nicho2,
    local_comum(Animal, margens).

%query teste
% ?- especie_dominante(Animal).

%retorno
% Animal = jacare
