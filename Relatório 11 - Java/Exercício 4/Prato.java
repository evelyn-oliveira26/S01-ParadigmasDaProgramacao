public class Prato {
    private String nome;
    private Monstro ingrediente;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro, String nomeTempero, double qntdeTempero) {
        this.nome = nome;
        this.ingrediente = monstro;
        this.tempero = new Tempero(nomeTempero, qntdeTempero); 
    }

    public void servir() {
        System.out.println("\nPrato Servido: " + nome);
        ingrediente.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome());
    }
}
