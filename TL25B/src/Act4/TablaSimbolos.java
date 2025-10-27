package Act4;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

// Clase para gestionar la tabla de símbolos y los ámbitos
public class TablaSimbolos {
    private Stack<Map<String, Simbolo>> tabla;
    private int nivelAlcanceActual;

    public TablaSimbolos() {
        this.tabla = new Stack<>();
        this.nivelAlcanceActual = -1;
        entrarAlcance(); // Crea el alcance global
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
            return false; // Error: ya declarado en este alcance
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
        return null; // No se encontró
    }
}
