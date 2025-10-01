package Act4;

import java.io.File;
import java.io.IOException;

public class GeneradorSintactico {
    public static void main(String[] args) throws IOException, Exception {
     
        String[] parametros = {"-destdir", "src\\Act4","-parser", "Sintactico", 
            "-progress", "src\\Act4\\sintacticoCS.cup"};
        java_cup.Main.main(parametros);
        
    }
    
   
}
