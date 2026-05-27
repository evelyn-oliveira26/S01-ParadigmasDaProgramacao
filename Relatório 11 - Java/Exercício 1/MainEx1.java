import java.util.ArrayList;

public class MainEx1 {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        ArrayList<Divisao> listaInicial = new ArrayList<>();
        Divisao quarto = new Divisao("Quarto", "Descanso");
        listaInicial.add(quarto);
        Divisao sala = new Divisao("Sala", "Treinar feitiços");
        listaInicial.add(sala);

        CasteloAnimado castelo = new CasteloAnimado(listaInicial);
        castelo.listarDivisoes();
    }
}
