import java.util.HashMap;

public class RegistroOculto {
    private HashMap<String, Entidade> registro;

    public RegistroOculto() {
        this.registro = new HashMap<>();
    }

    public void registrarEntidade(Entidade criatura) {
        if (registro.containsKey(criatura.getNome())) {
            System.out.println("A entidade " + criatura.getNome() + " já está registrada.");
        } else {
            registro.put(criatura.getNome(), criatura);
        }
    }

    public void listarEntidades() {
        System.out.println("\nEntidades Registradas:");
        for (Entidade e : registro.values()) {
            System.out.print(e.getNome() + ": ");
            if (e instanceof Rastreavel) {
                ((Rastreavel) e).obterCoordenadas();
            }
        }
    }
}
