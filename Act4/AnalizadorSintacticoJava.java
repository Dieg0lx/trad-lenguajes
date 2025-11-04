package Act4;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java_cup.runtime.Symbol;

/**
 *
 * @author 7053
 */
public class AnalizadorSintacticoJava {
    public static void main(String[] args) throws IOException {
        String rutaArchivo = "src/Act4/sintactico.txt"; 
        Sintactico s = null;

        try {
            Reader lector = new BufferedReader(new FileReader(rutaArchivo));
            
            s = new Sintactico(new Lexico(lector));
        
            System.out.println("Iniciando analisis de: " + rutaArchivo);
            
            s.parse(); 
   
            System.out.println("\n--- Analisis finalizado ---");
            System.out.println("Analisis realizado correctamente");

            s.tablaSimbolos.imprimir();

            if (s.erroresSemanticos.isEmpty()) {
                System.out.println("Analisis semantico completado sin errores.");
            } else {
                System.out.println("\nSE ENCONTRARON ERRORES SEMANTICOS:");
                for (String err : s.erroresSemanticos) {
                    System.err.println(err);
                }
            }

        } catch (Exception ex) {
            System.err.println("Error fatal durante el analisis: " + ex.getMessage());
            if (s != null) {
                try {
                     System.err.println("El error de sintaxis fue reportado por el parser.");
                } catch (Exception e_inner) {
                    System.err.println("Error al intentar recuperar el simbolo del error.");
                }
            }
            ex.printStackTrace();
        }
    }
}

