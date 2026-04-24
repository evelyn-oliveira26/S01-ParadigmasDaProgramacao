from abc import ABC, abstractmethod


class Heroi(ABC):
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass


class Tanque(Heroi):
    def usar_ultimate(self):
        print(f"<{self.nome}> (Tanque) usa o ultimate e absorve todo o dano para proteger o time!")


class Dano(Heroi):
    def usar_ultimate(self):
        print(f"<{self.nome}> (Dano) usa o ultimate causando destruição massiva nos inimigos!")


if __name__ == "__main__":

    time = []

    t1 = Tanque("Reinhardt", "Tanque")
    d1 = Dano("Tracer", "Dano")

    time.append(t1)
    time.append(d1)

    for heroi in time:
        heroi.usar_ultimate()
