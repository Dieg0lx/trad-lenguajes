package Act4;

// Clase para guardar la información de cada variable/símbolo
public class Simbolo {
    public String tipo;
    public String alcance;
    public Object valor;
    public int linea;
    public int columna;

    public Simbolo(String tipo, String alcance, int linea, int columna) {
        this.tipo = tipo;
        this.alcance = alcance;
        this.linea = linea;
        this.columna = columna;
        this.valor = null;
    }
}
