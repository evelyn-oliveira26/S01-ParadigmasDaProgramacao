public class MainEx3 {
    public static void main(String[] args) {
        Alien a1 = new Alien("ET");
        Alien a2 = new Alien("Varginha");
        Youkai y1 = new Youkai("Foguinho");
        Youkai y2 = new Youkai("Fogão");

        RegistroOculto arquivo = new RegistroOculto();
        
        arquivo.registrarEntidade(a1);
        arquivo.registrarEntidade(a2);
        arquivo.registrarEntidade(y1);
        arquivo.registrarEntidade(y2);
        
        //tentando registrar duplicado para testar o HashMap
        arquivo.registrarEntidade(a1); 

        arquivo.listarEntidades();
    }
}
