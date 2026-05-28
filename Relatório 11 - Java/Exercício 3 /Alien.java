public class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome) {
        super(nome);
        this.poder = new Poder("Telecinese", 8);
    }

    @Override
    public void obterCoordenadas() {
        System.out.println("Alien " + getNome() + " visto caindo do ovni.");
    }
}
