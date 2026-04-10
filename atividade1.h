#include <stdio.h>

int main() {
    int matriz[5];
    int *p = matriz; 

    printf("Digite 5 valores inteiros:\n");
    for(int i = 0; i < 5; i++) {
        scanf("%d", (p + i)); 
    }

    printf("Dobro dos valores lidos:\n");
    for(int i = 0; i < 5; i++) {
        printf("%d ", *(p + i) * 2);
    }
    printf("\n");

    return 0;
}

