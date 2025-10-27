/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Actividad2;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

/**
 *
 * @author DocentesUTJCCD
 */
public class AnalisisLexico {
     public static void main(String[] args) {
        System.out.println("PARRA LOPEZMARIA FERNANDA \n PIÑA GONZALEZ CESAR DANIEL \n RODRIGUEZ HERRERA JOSE DIEGO \n");
         
         
        String test = "src/Actividad2/prueba_palabras_reservadas.txt";

        try (Reader reader = new FileReader(test)) {
            // Crear la instancia del lexer directamente
            LexerPalabrasReservadasCSharp lexer = new LexerPalabrasReservadasCSharp(reader);

            // Leer tokens y procesarlos
            Actividad2.Token token;
            while ((token = lexer.yylex()) != null) {
                System.out.println("Token: " + token);
                System.out.println("");
            }
        } catch (IOException e) {
            System.err.println("Error al leer el archivo de prueba.");
            e.printStackTrace();
        }
        
        
        System.out.println("\n PARRA LOPEZMARIA FERNANDA \n PIÑA GONZALEZ CESAR DANIEL \n RODRIGUEZ HERRERA JOSE DIEGO \n");
    }

    
}