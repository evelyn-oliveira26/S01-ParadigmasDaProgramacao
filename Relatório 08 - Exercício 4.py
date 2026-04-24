from abc import ABC, abstractmethod


class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass


class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao


class NetRunner(Cibernetico):
    def __init__(self, nome, custo_implante, funcao_implante):
        self.nome = nome

        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"{self.nome} realiza um hack usando o implante de {self.implante.funcao}.")


class Faccao:
    def __init__(self, membros):

        self.membros = membros

    def executar_hacks(self):
        for membro in self.membros:
            membro.realizar_hack()


if __name__ == "__main__":
    n1 = NetRunner("V", 5000, "invasão neural")
    n2 = NetRunner("Lucy", 7000, "quebra de sistemas")

    lista = []
    lista.append(n1)
    lista.append(n2)

    faccao = Faccao(lista)

    faccao.executar_hacks()
