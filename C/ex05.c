/******************************************************************************
Autores do código: Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)
*******************************************************************************/

#include <stdio.h>
#include <string.h>

int verificarOcorrencias(char frase[], char palavra[], int tamanhoFrase, int tamanhoPalavra) {
    int ocorrencias = 0;

    for (int i = 0; i <= tamanhoFrase - tamanhoPalavra; i++) {
        int j;
        for (j = 0; j < tamanhoPalavra; j++) {
            if (frase[i + j] != palavra[j])
                break;
        }
        if (j == tamanhoPalavra)
            ocorrencias = ocorrencias + 1;
    }

    return ocorrencias;
}

int contarPalavra(char frase[], char palavra[]) {
    int tamanhoFrase = strlen(frase);
    int tamanhoPalavra = strlen(palavra);

    return verificarOcorrencias(frase, palavra, tamanhoFrase, tamanhoPalavra);
}

int main() {
    char frase[100];
    char palavra[50];

    printf("Digite a frase: ");
    gets(frase);
    printf("Digite a palavra: ");
    gets(palavra);

    int numeroOcorrencias = contarPalavra(frase, palavra);

    printf("Temos que a palavra %s ocorre %d vezes na frase.\n", palavra, numeroOcorrencias);

    return 0;
}
