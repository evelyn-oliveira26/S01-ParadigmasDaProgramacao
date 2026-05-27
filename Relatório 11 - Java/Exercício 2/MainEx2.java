public class MainEx2 {
    public static void main(String[] args) {
        Cafe simples = new Cafe("Café Coado", 2.50);
        CafeGourmet premium = new CafeGourmet("Frappuccino de canela", 12.00, 3.50);

        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();
        leblanc.adicionarNoMenu(simples);
        leblanc.adicionarNoMenu(premium);

        leblanc.abrirCafeteria();
    }
}
