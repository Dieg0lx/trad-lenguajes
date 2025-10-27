/*
    PINA GONZALEZ CESAR DANIEL
    PARRA LOPEZ MARIA FERNANDA
    RODRIGUEZ HERRERA JOSE DIEGO
    C#
*/

package Actividad2;

import static Actividad2.Token.Type.*;


%%

%public
%class LexerPalabrasReservadasCSharp
%unicode
%line
%column
%type Token

%%
/* PALABRAS RESERVADAS DE C# - TIPOS DE DATOS */
bool {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato bool ");
    return new Token(BOOL, yytext(), (yyline+1), (yycolumn+1)); 
    }
byte {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato byte ");
    return new Token(BYTE, yytext(), (yyline+1), (yycolumn+1)); 
    }
char {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato char ");
    return new Token(CHAR, yytext(), (yyline+1), (yycolumn+1)); 
}
decimal {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato decimal ");
    return new Token(DECIMAL, yytext(), (yyline+1), (yycolumn+1)); 
}
double {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato double ");
    return new Token(DOUBLE, yytext(), (yyline+1), (yycolumn+1)); 
}
float {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato float ");
    return new Token(FLOAT, yytext(), (yyline+1), (yycolumn+1)); 
}
int {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato int ");
    return new Token(INT, yytext(), (yyline+1), (yycolumn+1)); 
}
long {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato long ");
    return new Token(LONG, yytext(), (yyline+1), (yycolumn+1)); 
}
object {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo object ");
    return new Token(OBJECT, yytext(), (yyline+1), (yycolumn+1)); 
}
sbyte {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato sbyte ");
    return new Token(SBYTE, yytext(), (yyline+1), (yycolumn+1)); 
}
short {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato short ");
    return new Token(SHORT, yytext(), (yyline+1), (yycolumn+1)); 
    }
string {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato string ");
    return new Token(STRING, yytext(), (yyline+1), (yycolumn+1)); 
}
uint {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato uint ");
    return new Token(UINT, yytext(), (yyline+1), (yycolumn+1)); 
}
ulong {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato ulong ");
    return new Token(ULONG, yytext(), (yyline+1), (yycolumn+1)); 
}
ushort {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo de dato ushort ");
    return new Token(USHORT, yytext(), (yyline+1), (yycolumn+1)); 
}
void {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Tipo void ");
    return new Token(VOID, yytext(), (yyline+1), (yycolumn+1)); 
}

/* PALABRAS RESERVADAS DE C# - CONTROL DE FLUJO */

if {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Sentencia if (condicional) ");
    return new Token(IF, yytext(), (yyline+1), (yycolumn+1)); 
}
else {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Sentencia else (condicional alterno) ");
    return new Token(ELSE, yytext(), (yyline+1), (yycolumn+1)); 
}
switch {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Sentencia switch (selección múltiple) ");
    return new Token(SWITCH, yytext(), (yyline+1), (yycolumn+1)); 
}
case {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Sentencia case (opción en switch) ");
    return new Token(CASE, yytext(), (yyline+1), (yycolumn+1)); 
}
default {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Sentencia default (opción por defecto en switch) ");
    return new Token(DEFAULT, yytext(), (yyline+1), (yycolumn+1)); 
}
while {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Bucle while (condicional) ");
    return new Token(WHILE, yytext(), (yyline+1), (yycolumn+1)); 
}
do {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Bucle do (ejecuta antes de comprobar condición) ");
    return new Token(DO, yytext(), (yyline+1), (yycolumn+1)); 
}
for {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Bucle for (iteración controlada) ");
    return new Token(FOR, yytext(), (yyline+1), (yycolumn+1)); 
}
foreach {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Bucle foreach (iteración en colección) ");
    return new Token(FOREACH, yytext(), (yyline+1), (yycolumn+1)); 
}
break {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Instrucción break (romper ciclo o switch) ");
    return new Token(BREAK, yytext(), (yyline+1), (yycolumn+1)); 
}
continue {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Instrucción continue (saltar a siguiente iteración) ");
    return new Token(CONTINUE, yytext(), (yyline+1), (yycolumn+1)); 
}
goto {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Instrucción goto (salto a etiqueta) ");
    return new Token(GOTO, yytext(), (yyline+1), (yycolumn+1)); 
}
return {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Instrucción return (devolver valor y salir de método) ");
    return new Token(RETURN, yytext(), (yyline+1), (yycolumn+1)); 
}
yield {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Instrucción yield (retorno en iteradores) ");
    return new Token(YIELD, yytext(), (yyline+1), (yycolumn+1)); 
}

/* PALABRAS RESERVADAS DE C# - MODIFICADORES DE ACCESO */

public {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador de acceso public (acceso total) ");
    return new Token(PUBLIC, yytext(), (yyline+1), (yycolumn+1)); 
}

private {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador de acceso private (acceso solo en la clase) ");
    return new Token(PRIVATE, yytext(), (yyline+1), (yycolumn+1)); 
}

protected {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador de acceso protected (acceso en clase y derivadas) ");
    return new Token(PROTECTED, yytext(), (yyline+1), (yycolumn+1)); 
}

internal {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador de acceso internal (acceso solo dentro del ensamblado) ");
    return new Token(INTERNAL, yytext(), (yyline+1), (yycolumn+1)); 
}

/* PALABRAS RESERVADAS DE C# - MODIFICADORES DE TIPOS Y MIEMBROS */

abstract {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador abstract (clase o miembro incompleto) ");
    return new Token(ABSTRACT, yytext(), (yyline+1), (yycolumn+1)); 
}

async {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador async (método asincrónico) ");
    return new Token(ASYNC, yytext(), (yyline+1), (yycolumn+1)); 
}

const {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador const (constante en tiempo de compilación) ");
    return new Token(CONST, yytext(), (yyline+1), (yycolumn+1)); 
}

event {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador event (miembro de evento) ");
    return new Token(EVENT, yytext(), (yyline+1), (yycolumn+1)); 
}

extern {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador extern (método implementado externamente) ");
    return new Token(EXTERN, yytext(), (yyline+1), (yycolumn+1)); 
}

new {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador new (ocultamiento de miembro heredado) ");
    return new Token(NEW, yytext(), (yyline+1), (yycolumn+1)); 
}

override {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador override (reescribir miembro heredado) ");
    return new Token(OVERRIDE, yytext(), (yyline+1), (yycolumn+1)); 
}

readonly {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador readonly (campo asignable solo en constructor) ");
    return new Token(READONLY, yytext(), (yyline+1), (yycolumn+1)); 
}

sealed {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador sealed (clase no heredable o método no sobreescribible) ");
    return new Token(SEALED, yytext(), (yyline+1), (yycolumn+1)); 
}

static {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador static (miembro o clase estática) ");
    return new Token(STATIC, yytext(), (yyline+1), (yycolumn+1)); 
}

unsafe {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador unsafe (código inseguro con punteros) ");
    return new Token(UNSAFE, yytext(), (yyline+1), (yycolumn+1)); 
}

virtual {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador virtual (miembro sobreescribible) ");
    return new Token(VIRTUAL, yytext(), (yyline+1), (yycolumn+1)); 
}

volatile {
    System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
    System.out.println(yytext()+" -> Modificador volatile (campo que puede cambiar en múltiples hilos) ");
    return new Token(VOLATILE, yytext(), (yyline+1), (yycolumn+1)); 
}


/* SIMBOLOS */
"{"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Llave de apertura ");                
                return new Token(LLAVE_APERTURA, yytext(), (yyline+1), (yycolumn+1));
            }

"}"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Llave de cierre ");                
                return new Token(LLAVE_CIERRE, yytext(), (yyline+1), (yycolumn+1));
            }

"("         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Paréntesis de apertura ");                
                return new Token(PAREN_APERTURA, yytext(), (yyline+1), (yycolumn+1));
            }

")"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Paréntesis de cierre ");                
                return new Token(PAREN_CIERRE, yytext(), (yyline+1), (yycolumn+1));
            }

"["         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Corchete de apertura ");                
                return new Token(CORCHETE_APERTURA, yytext(), (yyline+1), (yycolumn+1));
            }

"]"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Corchete de cierre ");                
                return new Token(CORCHETE_CIERRE, yytext(), (yyline+1), (yycolumn+1));
            }

";"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Punto y coma ");                
                return new Token(PUNTO_COMA, yytext(), (yyline+1), (yycolumn+1));
            }

","         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Coma ");                
                return new Token(COMA, yytext(), (yyline+1), (yycolumn+1));
            }

"."         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Punto ");                
                return new Token(PUNTO, yytext(), (yyline+1), (yycolumn+1));
            }

 /* OPERADORES ARITMÉTICOS */

"+"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador suma ");                
                return new Token(OPERADOR_SUMA, yytext(), (yyline+1), (yycolumn+1));
            }

"-"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador resta ");                
                return new Token(OPERADOR_RESTA, yytext(), (yyline+1), (yycolumn+1));
            }

"*"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador multiplicación ");                
                return new Token(OPERADOR_MULTI, yytext(), (yyline+1), (yycolumn+1));
            }

"/"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador división ");                
                return new Token(OPERADOR_DIVISION, yytext(), (yyline+1), (yycolumn+1));
            }

"%"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador módulo ");                
                return new Token(OPERADOR_MODULO, yytext(), (yyline+1), (yycolumn+1));
            }

"="         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de asignación ");                
                return new Token(ASIGNACION, yytext(), (yyline+1), (yycolumn+1));
            }

/* OPERADORES RELACIONALES */

"=="        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador igual a ");                
                return new Token(IGUAL_A, yytext(), (yyline+1), (yycolumn+1));
            }

"!="        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador diferente ");                
                return new Token(DIFERENTE, yytext(), (yyline+1), (yycolumn+1));
            }

">"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador mayor que ");                
                return new Token(MAYOR, yytext(), (yyline+1), (yycolumn+1));
            }

"<"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador menor que ");                
                return new Token(MENOR, yytext(), (yyline+1), (yycolumn+1));
            }

">="        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador mayor o igual que ");                
                return new Token(MAYOR_IGUAL, yytext(), (yyline+1), (yycolumn+1));
            }

"<="        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador menor o igual que ");                
                return new Token(MENOR_IGUAL, yytext(), (yyline+1), (yycolumn+1));
            }

/* OPERADORES LÓGICOS */
"&&"        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador lógico AND ");                
                return new Token(AND, yytext(), (yyline+1), (yycolumn+1));
            }

"||"        { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador lógico OR ");                
                return new Token(OR, yytext(), (yyline+1), (yycolumn+1));
            }

"!"         { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador lógico NOT ");                
                return new Token(NOT, yytext(), (yyline+1), (yycolumn+1));
            }



[ \t\n\r]+  { /* Ignorar espacios en blanco */ }

.           { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> ERROR Token no reconocido");                 
            }

/*Expresiones Regulares */

[ \t\n\r]+  { /* Ignorar espacios en blanco */ }

.           { 
                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> ERROR Token no reconocido");                 
            }

[a-zA-Z_][a-zA-Z0-9_]*
            {

                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
                System.out.println(yytext()+" -> IDENTIFICADOR");
                return new Token(IDENTIFICADOR, yytext(), (yyline+1), (yycolumn+1)); 

            }

-?\d+ 
            {

                System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t"); 
                System.out.println(yytext()+" -> VALOR ENTERO");
                return new Token(VALOR_ENTERO, yytext(), (yyline+1), (yycolumn+1)); 

            }
/*Manejo de errores*/

. 
            {
                System.err.println("Error léxico: carácter no reconocido '" + yytext() +
                "' en la línea " + (yyline+1) + ", columna " + (yycolumn+1));
            }

[0-9]+[A-Za-z_]+[A-Za-z0-9_]* 
            {
                System.err.println("Error léxico: identificador mal formado '" + yytext() +
                "' en línea " + (yyline+1) + ", columna " + (yycolumn+1));
            }

[0-9]*\.[0-9]* 
            {
                System.err.println("Error léxico: literal numérico incorrecto '" + yytext() +
                "' en línea " + (yyline+1) + ", columna " + (yycolumn+1));
            }

\"([^\"\n]*) 
            {
                System.err.println("Error léxico: cadena mal formada '" + yytext() +
                "' en línea " + (yyline+1) + ", columna " + (yycolumn+1));
            }

