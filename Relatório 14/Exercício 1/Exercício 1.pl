especie_chave(Animal) :-
    (alimenta(agua, Animal) ; alimenta(terra, Animal)),
    (nicho(Animal, rios) ; nicho(Animal, pântano) ; nicho(Animal, profundezas)).
