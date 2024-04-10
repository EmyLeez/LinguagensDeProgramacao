/******************************************************************************
Autores do código: Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)
*******************************************************************************/

#include <stdio.h>
int main () {
    int num;
    printf ("Digite um numero: "); 
    scanf ("%d",&num);
    
    int resultado = 1;
    int contador;
    
    for (contador = 1; contador <= num; contador = contador + 1) {
        resultado = resultado * contador;
    }
    
    printf("O valor de %d! = %d\n", num, resultado);
}
