#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Autores do Codigo:
    // Emylly Guimaraes (Matricula: 171079) e Felipe Marzani (Matricula: 162662)

struct Produto {
    char nome[30];  // Nome do produto
    int codigo;     // Código do produto
    double preco;   // Preço do produto
};

// Struct para representar um nó da lista
typedef struct node {
    struct Produto produto;
    struct node* next;
} Node;

// Atribuição de funções para a realização do programa gerenciador de produtos

// EXIBICAO
void exibirLista(Node* lista) {
    printf("\nLista de Produtos:\n");
    while (lista != NULL) {
        printf("Nome: %s, Código: %d, Preço: %.2lf\n", lista->produto.nome, lista->produto.codigo, lista->produto.preco);
        lista = lista->next;
    }
}

// ADICAO
void adicionarProduto(Node** lista) {
    Node* novoProduto = (Node*)malloc(sizeof(Node));
    if (novoProduto == NULL) {
        printf("Erro ao alocar memória\n");
        return;
    }

    printf("Digite o nome do produto: ");
    scanf("%s", novoProduto->produto.nome);
    printf("Digite o código do produto: ");
    scanf("%d", &novoProduto->produto.codigo);
    printf("Digite o preço do produto: ");
    scanf("%lf", &novoProduto->produto.preco);

    novoProduto->next = *lista;
    *lista = novoProduto;
}

// BUSCA
void buscarPorNome(Node* lista, char* nome) {
    while (lista != NULL) {
        if (strcmp(lista->produto.nome, nome) == 0) {
            printf("Produto encontrado:\n");
            printf("Nome: %s, Código: %d, Preço: %.2lf\n", lista->produto.nome, lista->produto.codigo, lista->produto.preco);
            return;
        }
        lista = lista->next;
    }
    printf("Produto não encontrado.\n");
}

// LIBERACAO DE MEMORIA ALOCADA
void liberarLista(Node* lista) {
    Node* temp;
    while (lista != NULL) {
        temp = lista;
        lista = lista->next;
        free(temp);
    }
}

// FUNCAO DE ENTRADA PRINCIPAL
int main() {
    Node* lista = NULL;
    int opcao;
    char nome[30];

    while (opcao != 4) {
        
        printf("\nMenu:\n");
        printf("1. Adicionar Produto\n");
        printf("2. Exibir Lista de Produtos\n");
        printf("3. Buscar Produto por Nome\n");
        printf("4. Sair\n");
        printf("Escolha uma opção: ");
        scanf("%d", &opcao);
        
        if (opcao == 1) {
            adicionarProduto(&lista);
        } else if (opcao == 2) {
            exibirLista(lista);
        } else if (opcao == 3) {
            printf("Digite o nome do produto a ser buscado: ");
            scanf("%s", nome);
            buscarPorNome(lista, nome);
        } else if (opcao > 4) {
            printf("Opção Inválida. \n");
        }
    }
    liberarLista(lista);
    printf("Programa encerrado. \n");
    return 0;
}



