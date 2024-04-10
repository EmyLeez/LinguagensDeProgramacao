/******************************************************************************
Autores do código: Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)
*******************************************************************************/

#include <stdio.h>

int verificaPrimo (int num)
{
    int count = 2;
    int n = 0;
    
    if (num < 2) {
        printf("O numero %d nao e primo", num);
        return 0;
    } else {
        while (count < num) {
            int resto = num % count;
            
            if (resto == 0) {
                n = n + 1;
                count = count + 1;
            } else {
                count = count + 1;
            }
        }
        
        if (n == 0) {
            printf("O numero %d e primo", num);
            return 0;
        } else {
            printf("O numero %d nao e primo", num);
            return 0;
        }
    }
    return 0;
}

int main () {
    int num;
    printf ("Entre com numero para verificar se é primo: "); 
    scanf ("%d",&num); 
    verificaPrimo(num);
    return 0;
}
