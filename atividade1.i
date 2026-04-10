#include <stdio.h>

int ordena(int *a, int *b, int *c) {
    int temp;
    if(*a == *b && *b == *c) return 1;


    if(*a > *b) { temp = *a; *a = *b; *b = temp; }
    if(*a > *c) { temp = *a; *a = *c; *c = temp; }
    if(*b > *c) { temp = *b; *b = *c; *c = temp; }

    return 0;
}

int main() {
    int v1, v2, v3;
    printf("Digite 3 valores inteiros: ");
    scanf("%d %d %d", &v1, &v2, &v3);

    int sao_iguais = ordena(&v1, &v2, &v3);

    printf("Valores ordenados: %d, %d, %d\n", v1, v2, v3);
    
    if(sao_iguais) {
        printf("Retorno da funcao: 1 (Os tres valores sao iguais).\n");
    } else {
        printf("Retorno da funcao: 0 (Existem valores diferentes).\n");
    }

    return 0;
}
