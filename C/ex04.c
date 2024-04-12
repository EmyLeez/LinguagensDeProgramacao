/******************************************************************************
Autores do código: Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)
*******************************************************************************/

#include <stdio.h>
int conversorCelsius (float fah) {
    float celsius = ((fah - 32) * 5) / 9;
    return celsius;
}


int main()
{
    float fah;
    printf("Digite uma temperatura em Fahrenheit para a conversão em Celsius: ");
    scanf ("%f", &fah);
    float convertido = conversorCelsius(fah);
    printf("A temperatura convertida de %fF° para C° é: %f \n", fah, convertido);
    return 0;
}
