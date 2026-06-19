%fatos adicionais
alimenta(agua, sucuri).
alimenta(terra, sucuri).

%regra
especie_chave(Animal) :-
    (alimenta(agua, Animal) ; alimenta(terra, Animal)),
    (nicho(Animal, rios) ; nicho(Animal, pântano) ; nicho(Animal, profundezas)).

%query teste
% ?- especie_chave(Animal).

%retorno
% Animal = sucuri
