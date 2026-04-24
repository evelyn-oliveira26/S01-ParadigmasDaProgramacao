class ArmaCorpoACorpo:
    def __init__(self, nome):
        self.nome = nome


class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma


class Joker:
    def __init__(self, membros):
        self.arma = ArmaCorpoACorpo("Faca")

        self.membros = membros

    def mostrar_equipe(self):
        print("Equipe Phantom Thieves:")

        for membro in self.membros:
            print(f"{membro.nome} usa {membro.arma.nome}")


if __name__ == "__main__":
    arma1 = ArmaCorpoACorpo("Chicote")
    arma2 = ArmaCorpoACorpo("Machado")

    m1 = PhantomThieves("Ann", arma1)
    m2 = PhantomThieves("Ryuji", arma2)

    lista = []
    lista.append(m1)
    lista.append(m2)

    joker = Joker(lista)

    joker.mostrar_equipe()
