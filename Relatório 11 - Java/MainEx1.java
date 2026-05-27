// MainEx1.java
import java.util.ArrayList;

public class MainEx1 {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        ArrayList<Divisao> listaInicial = new ArrayList<>();
        Divisao quarto = new Divisao("Quarto do Howl", "Descanso e feitiços");
        listaInicial.add(quarto);
        Divisao banheiro = new Divisao("Banheiro", "Tinturas de cabelo");
        listaInicial.add(banheiro);

        CasteloAnimado castelo = new CasteloAnimado(listaInicial);
   
        castelo.listarDivisoes();
    }
}