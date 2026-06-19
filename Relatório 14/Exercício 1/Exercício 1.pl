% Fatos adicionais (Exercício 1)
alimenta(agua, sucuri).
alimenta(terra, sucuri).

% Regra: espécie chave (Exercício 1)
especie_chave(Animal) :-
    (alimenta(agua, Animal) ; alimenta(terra, Animal)),
    (nicho(Animal, rios) ; nicho(Animal, pântano) ; nicho(Animal, profundezas)).
