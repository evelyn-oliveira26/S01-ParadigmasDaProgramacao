public class Mago extends Personagem {
    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e tenho a habilidade de lançar bolas de fogo.");
    }
}
