
#include <stdio.h>
#include <string.h>

typedef struct {
    char titulo[31];
    char autor[16];
    int ano;
} Livro;

int main() {
    Livro livros[5];
    char busca[31];
    int encontrou = 0;

    for(int i = 0; i < 5; i++) {
        printf("--- Livro %d ---\n", i + 1);
        printf("Titulo: ");
        scanf(" %30[^\n]", livros[i].titulo);
        printf("Autor: ");
        scanf(" %15[^\n]", livros[i].autor);
        printf("Ano: ");
        scanf("%d", &livros[i].ano);
    }

    printf("\nDigite o titulo que deseja buscar: ");
    scanf(" %30[^\n]", busca);

    printf("\nResultados:\n");
    for(int i = 0; i < 5; i++) {
        if(strcmp(livros[i].titulo, busca) == 0) {
            printf("Titulo: %s | Autor: %s | Ano: %d\n", livros[i].titulo, livros[i].autor, livros[i].ano);
            encontrou = 1;
        }
    }
    
    if(!encontrou) {
        printf("Nenhum livro com esse titulo foi encontrado.\n");
    }

    return 0;
}
