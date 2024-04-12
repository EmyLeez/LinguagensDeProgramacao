/******************************************************************************
Autores do código: Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)
*******************************************************************************/

#include <stdio.h>
int verificadorImpar (int num, int contador, int numero) {
    
    while (contador < num) {
        int resto = numero % 2;
        if (resto != 0) {
            printf("%d\n", numero);
            contador = contador + 1;
            numero = numero + 1;
        } else {
            numero = numero + 1;
        }
    }
    
    return 0;
}


int main()
{
    int num;
    printf("Digite um numero inteiro e positivo: ");
    scanf ("%d", &num);
    int contador = 0;
    int numero = 1;
    printf("Os primeiros %d impares são: \n", num);
    int retorno = verificadorImpar(num, contador, numero);
    return 0;
}
