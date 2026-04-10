#include <stdio.h>

int main() {
    int mat[3][3];
    
    printf("Digite os elementos da matriz 3x3:\n");
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            scanf("%d", &mat[i][j]);
        }
    }
    
    printf("Matriz com elementos multiplicados por 5:\n");
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            printf("%d ", mat[i][j] * 5);
        }
        printf("\n");
    }
    
    return 0;
}
