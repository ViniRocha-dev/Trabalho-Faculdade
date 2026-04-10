#include <stdio.h>

int main() {
    int vet[5];
    printf("Digite 5 numeros:\n");
    for(int i = 0; i < 5; i++) {
        scanf("%d", &vet[i]);
    }
    
    printf("Ordem inversa:\n");
    for(int i = 4; i >= 0; i--) {
        printf("%d ", vet[i]);
    }
    printf("\n");
    
    return 0;
}
