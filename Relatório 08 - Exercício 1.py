class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia

    def get_vida(self):
        return self._vida

    def set_vida(self, nova_vida):
        if nova_vida >= 0:
            self._vida = nova_vida
        else:
            print("A vida não pode ser negativa!")

    def __str__(self):
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência"


class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        super().__init__(vida, resistencia)
        self.armadura_pesada = armadura_pesada

    def __str__(self):
        return f"Cavaleiro com {self._vida} de vida, {self._resistencia} de resistência e armadura pesada: {self.armadura_pesada}"


if __name__ == "__main__":
    personagem = Personagem(100, 50)
    cavaleiro = Cavaleiro(150, 80, True)

    print(personagem)
    print(cavaleiro)

    cavaleiro.set_vida(120)
    print(cavaleiro)
