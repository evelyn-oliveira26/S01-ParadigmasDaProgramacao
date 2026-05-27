import java.util.ArrayList;

public class Menu {
    private ArrayList<Cafe> listaCafes;

    public Menu() {
        this.listaCafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        listaCafes.add(cafe);
    }

    public void exibirMenu() {
        System.out.println("Menu do Leblanc");
        for (Cafe c : listaCafes) {
            System.out.println(c.getNome() + " - R$ " + c.calcularPrecoFinal());
        }
    }
}
