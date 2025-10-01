/*
    PINA GONZALEZ CESAR DANIEL
    PARRA LOPEZ MARIA FERNANDA
    RODRIGUEZ HERRERA JOSE DIEGO
    C#
*/

package Act4;
import java_cup.runtime.*;
import static Actividad2.Token.Type.*;


%%

%public
%class Lexico
%unicode
%line
%column
%cup

%{
    private Symbol simbolo(int type, Object value)
    {
    return new Symbol(type, (yyline+1), (yycolumn+1), value);
    }
%}

%%
/* PALABRAS RESERVADAS DE C# - TIPOS DE DATOS */

bool    { return simbolo(sym.BOOL, yytext()); }
byte    { return simbolo(sym.BYTE, yytext()); }
char    { return simbolo(sym.CHAR, yytext()); }
decimal { return simbolo(sym.DECIMAL, yytext()); }
double  { return simbolo(sym.DOUBLE, yytext()); }
float   { return simbolo(sym.FLOAT, yytext()); }
int     { return simbolo(sym.INT, yytext()); }
long    { return simbolo(sym.LONG, yytext()); }
object  { return simbolo(sym.OBJECT, yytext()); }
sbyte   { return simbolo(sym.SBYTE, yytext()); }
short   { return simbolo(sym.SHORT, yytext()); }
string  { return simbolo(sym.STRING, yytext()); }
uint    { return simbolo(sym.UINT, yytext()); }
ulong   { return simbolo(sym.ULONG, yytext()); }
ushort  { return simbolo(sym.USHORT, yytext()); }
void    { return simbolo(sym.VOID, yytext()); }

/* PALABRAS RESERVADAS DE C# - CONTROL DE FLUJO */

if       { return simbolo(sym.IF, yytext()); }
else     { return simbolo(sym.ELSE, yytext()); }
switch   { return simbolo(sym.SWITCH, yytext()); }
case     { return simbolo(sym.CASE, yytext()); }
default  { return simbolo(sym.DEFAULT, yytext()); }
while    { return simbolo(sym.WHILE, yytext()); }
do       { return simbolo(sym.DO, yytext()); }
for      { return simbolo(sym.FOR, yytext()); }
foreach  { return simbolo(sym.FOREACH, yytext()); }
break    { return simbolo(sym.BREAK, yytext()); }
continue { return simbolo(sym.CONTINUE, yytext()); }
goto     { return simbolo(sym.GOTO, yytext()); }
return   { return simbolo(sym.RETURN, yytext()); }
yield    { return simbolo(sym.YIELD, yytext()); }

/* PALABRAS RESERVADAS DE C# - MODIFICADORES DE ACCESO */

public    { return simbolo(sym.PUBLIC, yytext()); }
private   { return simbolo(sym.PRIVATE, yytext()); }
protected { return simbolo(sym.PROTECTED, yytext()); }
internal  { return simbolo(sym.INTERNAL, yytext()); }

/* PALABRAS RESERVADAS DE C# - MODIFICADORES DE TIPOS Y MIEMBROS */

abstract { return simbolo(sym.ABSTRACT, yytext()); }
async    { return simbolo(sym.ASYNC, yytext()); }
const    { return simbolo(sym.CONST, yytext()); }
event    { return simbolo(sym.EVENT, yytext()); }
extern   { return simbolo(sym.EXTERN, yytext()); }
new      { return simbolo(sym.NEW, yytext()); }
override { return simbolo(sym.OVERRIDE, yytext()); }
readonly { return simbolo(sym.READONLY, yytext()); }
sealed   { return simbolo(sym.SEALED, yytext()); }
static   { return simbolo(sym.STATIC, yytext()); }
unsafe   { return simbolo(sym.UNSAFE, yytext()); }
virtual  { return simbolo(sym.VIRTUAL, yytext()); }
volatile { return simbolo(sym.VOLATILE, yytext()); }

/*Palabras Reservadas TRUE FALSE*/

"true"  { return simbolo(sym.TRUE, yytext()); }
"false" { return simbolo(sym.FALSE, yytext()); }

/* SIMBOLOS */

"{" { return simbolo(sym.LLAVE_APERTURA, yytext()); }
"}" { return simbolo(sym.LLAVE_CIERRE, yytext()); }
"(" { return simbolo(sym.PAREN_APERTURA, yytext()); }
")" { return simbolo(sym.PAREN_CIERRE, yytext()); }
"[" { return simbolo(sym.CORCHETE_APERTURA, yytext()); }
"]" { return simbolo(sym.CORCHETE_CIERRE, yytext()); }
";" { return simbolo(sym.PUNTO_COMA, yytext()); }
"," { return simbolo(sym.COMA, yytext()); }
"." { return simbolo(sym.PUNTO, yytext()); }

/* OPERADORES ARITMÉTICOS */

"+" { return simbolo(sym.OPERADOR_SUMA, yytext()); }
"-" { return simbolo(sym.OPERADOR_RESTA, yytext()); }
"*" { return simbolo(sym.OPERADOR_MULTIPLICACION, yytext()); }
"/" { return simbolo(sym.OPERADOR_DIVISION, yytext()); }
"%" { return simbolo(sym.OPERADOR_MODULO, yytext()); }
"=" { return simbolo(sym.ASIGNACION, yytext()); }

/* OPERADORES RELACIONALES */

"==" { return simbolo(sym.IGUAL_A, yytext()); }
"!=" { return simbolo(sym.DIFERENTE, yytext()); }
">"  { return simbolo(sym.MAYOR, yytext()); }
"<"  { return simbolo(sym.MENOR, yytext()); }
">=" { return simbolo(sym.MAYOR_IGUAL, yytext()); }
"<=" { return simbolo(sym.MENOR_IGUAL, yytext()); }

/* OPERADORES LÓGICOS */

"&&" { return simbolo(sym.AND, yytext()); }
"||" { return simbolo(sym.OR, yytext()); }
"!"  { return simbolo(sym.NOT, yytext()); }

/* Expresiones Regulares */

\d+\.\d+ { return simbolo(sym.VALOR_FLOTANTE, yytext()); }

\d+ { return simbolo(sym.VALOR_ENTERO, new String(yytext())); }

/* Literal de Cadena */
\" ( [^\"\\\n\r] | \\. )* \"  { return simbolo(sym.VALOR_CADENA, yytext()); }

[a-zA-Z_][a-zA-Z0-9_]* { return simbolo(sym.IDENTIFICADOR, yytext()); }


/* Ignorar espacios en blanco */
[ \t\n\r]+ { /* no hacer nada */ }

/* Manejo de errores */

[0-9]+[A-Za-z_]+[A-Za-z0-9_]* {
    System.err.println("Error léxico: identificador mal formado '" + yytext() +
    "' en línea " + (yyline+1) + ", columna " + (yycolumn+1));
}

[0-9]*\.[0-9]* {
    System.err.println("Error léxico: literal numérico incorrecto '" + yytext() +
    "' en línea " + (yyline+1) + ", columna " + (yycolumn+1));
}

\"([^\"\n]*) {
    System.err.println("Error léxico: cadena mal formada '" + yytext() +
    "' en línea " + (yyline+1) + ", columna " + (yycolumn+1));
}

/* Cualquier otro caracter no reconocido */
. {
    System.err.println("Error léxico: carácter no reconocido '" + yytext() +
    "' en la línea " + (yyline+1) + ", columna " + (yycolumn+1));
}