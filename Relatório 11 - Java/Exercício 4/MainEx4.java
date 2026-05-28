import java.util.ArrayList;

public class MainEx4 {
    public static void main(String[] args) {
        Lagosta lobster = new Lagosta("Lagosta Lobster");
        Cogumelo champignon = new Cogumelo("Cogumelo Champignon");

        Prato prato1 = new Prato("Lagosta com molho de tomate.", lobster, "Sal.");
        Prato prato2 = new Prato("Strogonoff com cogumelo.", champignon, "Alho.");

        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(prato1);
        cardapio.add(prato2);

        for (Prato p : cardapio) {
            p.servir();
        }
    }
}
