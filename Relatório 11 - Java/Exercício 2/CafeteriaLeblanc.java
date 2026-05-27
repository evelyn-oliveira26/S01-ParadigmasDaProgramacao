public class CafeteriaLeblanc {
    private Menu menuInterno;

    public CafeteriaLeblanc() {
        this.menuInterno = new Menu();
    }

    public void adicionarNoMenu(Cafe cafe) {
        menuInterno.adicionarCafe(cafe);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo ao Leblanc!");
        menuInterno.exibirMenu();
    }
}
