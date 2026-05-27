import java.util.ArrayList;

public class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoesInicio) {
        this.divisoes = divisoesInicio;
    }

    public void adicionarDivisao(Divisao novaDivisao) {
        divisoes.add(novaDivisao);
    }

    public void listarDivisoes() {
        System.out.println("Divisões do Castelo Animado:");
        for (Divisao d : divisoes) {
            System.out.println("- " + d.nome + " (Função: " + d.funcao + ")");
        }
    }
}
