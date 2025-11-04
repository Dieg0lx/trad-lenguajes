package Act4;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class TablaSimbolos {
    private Stack<Map<String, Simbolo>> tabla;
    private int nivelAlcanceActual;

    public TablaSimbolos() {
        this.tabla = new Stack<>();
        this.nivelAlcanceActual = -1;
        entrarAlcance();
    }

    public void entrarAlcance() {
        tabla.push(new HashMap<>());
        nivelAlcanceActual++;
    }

    public void salirAlcance() {
        if (!tabla.isEmpty()) {
            tabla.pop();
            nivelAlcanceActual--;
        }
    }

    public boolean insertar(String identificador, String tipo, int linea, int columna) {
        Map<String, Simbolo> alcanceActual = tabla.peek();
        if (alcanceActual.containsKey(identificador)) {
            return false;
        }
        String alcance = (nivelAlcanceActual == 0) ? "global" : "local";
        alcanceActual.put(identificador, new Simbolo(tipo, alcance, linea, columna));
        return true;
    }

    public Simbolo buscar(String identificador) {
        for (int i = tabla.size() - 1; i >= 0; i--) {
            if (tabla.get(i).containsKey(identificador)) {
                return tabla.get(i).get(identificador);
            }
        }
        return null;
    }
    
    public void imprimir() {
    System.out.println("\n===== TABLA DE SIMBOLOS =====");
    for (int i = 0; i < tabla.size(); i++) {
        System.out.println(">> Alcance nivel " + i + ":");
        for (Map.Entry<String, Simbolo> entry : tabla.get(i).entrySet()) {
            System.out.println("   " + entry.getKey() + " -> " + entry.getValue());
        }
    }
    System.out.println("==============================\n");
}
}
