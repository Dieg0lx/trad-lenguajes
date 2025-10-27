package Act4;

import java_cup.runtime.Symbol;

// Clase para pasar información de las declaraciones
public class VarInfo {
    Symbol symbol;
    String tipoExpr;

    public VarInfo(Symbol symbol, String tipoExpr) {
        this.symbol = symbol;
        this.tipoExpr = tipoExpr;
    }
}
