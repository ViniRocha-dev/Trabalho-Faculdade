#include <stdio.h>

int main() {
    int vet[3], mat[3][3], res[3] = {0, 0, 0};

    printf("Digite os 3 elementos do vetor:\n");
    for(int i = 0; i < 3; i++) scanf("%d", &vet[i]);

    printf("Digite os elementos da matriz 3x3:\n");
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            scanf("%d", &mat[i][j]);
        }
    }

    for(int j = 0; j < 3; j++) {
        for(int i = 0; i < 3; i++) {
            res[j] += vet[i] * mat[i][j];
        }
    }

    printf("Vetor resultante da multiplicacao pelas colunas:\n");
    for(int i = 0; i < 3; i++) {
        printf("%d ", res[i]);
    }
    printf("\n");

    return 0;
}
