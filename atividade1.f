#include <stdio.h>

typedef struct {
    char nome[50];
    int matricula;
    float media;
} Aluno;

int main() {
    Aluno turma[10], aprovados[10], reprovados[10];
    int qtdAprov = 0, qtdReprov = 0;

    for(int i = 0; i < 10; i++) {
        printf("--- Aluno %d ---\n", i + 1);
        printf("Nome: ");
        scanf(" %49[^\n]", turma[i].nome);
        printf("Matricula: ");
        scanf("%d", &turma[i].matricula);
        printf("Media Final: ");
        scanf("%f", &turma[i].media);

        if(turma[i].media >= 5.0) {
            aprovados[qtdAprov++] = turma[i];
        } else {
            reprovados[qtdReprov++] = turma[i];
        }
    }

    printf("\n=== APROVADOS ===\n");
    for(int i = 0; i < qtdAprov; i++) {
        printf("Nome: %s | Mat.: %d | Media: %.2f\n", aprovados[i].nome, aprovados[i].matricula, aprovados[i].media);
    }

    printf("\n=== REPROVADOS ===\n");
    for(int i = 0; i < qtdReprov; i++) {
        printf("Nome: %s | Mat.: %d | Media: %.2f\n", reprovados[i].nome, reprovados[i].matricula, reprovados[i].media);
    }

    return 0;
}
