public class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        this.poder = new Poder("Invisibilidade", 10);
    }

    @Override
    public void obterCoordenadas() {
        System.out.println("Youkai " + getNome() + " detectado na floresta.");
    }
}
