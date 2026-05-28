public class Tempero {
    private String nome;
    private double quantidade;

    public Tempero(String nome, double quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public double getQuantidade() {
        return quantidade;
    }
}
