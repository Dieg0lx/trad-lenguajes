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
        Reader lector = new BufferedReader(new FileReader("src/Act4/sintactico.txt"));
        Sintactico s = new Sintactico(new Lexico(lector));
        
//        String contenido= "byte  numero1;";
//        JavaSintactico s = new JavaSintactico(new JavaLexico(new StringReader(contenido)));
        try {
            System.out.println(s.parse());
            System.out.println("Analisis realizado correctamente");
        } catch (Exception ex) {
//            Symbol sym = s.getS();
//          System.out.println("Error de sintaxis. Linea: " + (sym.right + 1) +
//              " Columna: " + (sym.left + 1) + ", Texto: \"" + sym.value + "\"");
        System.out.println(ex.getMessage());
        }
    }
}
