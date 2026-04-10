#include <stdio.h>
#include <stdlib.h>

// Estrutura do Nó da Pilha Dinâmica
typedef struct No {
    char caractere;
    struct No* prox;
} No;

// Estrutura da Pilha
typedef struct {
    No* topo;
} Pilha;

// Inicializa a pilha
void inicializar(Pilha* p) {
    p->topo = NULL;
}

// Verifica se a pilha está vazia
int isEmpty(Pilha* p) {
    return p->topo == NULL;
}

// Insere elemento no topo da pilha (Push)
void push(Pilha* p, char c) {
    No* novo = (No*)malloc(sizeof(No));
    if (novo != NULL) {
        novo->caractere = c;
        novo->prox = p->topo;
        p->topo = novo;
    } else {
        printf("Erro: Falha na alocacao de memoria.\n");
    }
}

// Remove e retorna o elemento do topo da pilha (Pop)
char pop(Pilha* p) {
    if (isEmpty(p)) return '\0';
    
    No* temp = p->topo;
    char c = temp->caractere;
    p->topo = temp->prox;
    free(temp); // Libera a memória do nó
    return c;
}

int main() {
    Pilha p;
    inicializar(&p);
    
    char texto[100];
    
    printf("Digite uma string para inverter: ");
    scanf(" %99[^\n]", texto);
    
    // 1º Passo: Empilhar todos os caracteres da string original
    char* pt = texto;
    while (*pt != '\0') {
        push(&p, *pt);
        pt++;
    }
    
    // 2º Passo: Desempilhar sobrescrevendo a string original (LIFO: O último a entrar é o primeiro a sair)
    pt = texto; // Resetamos o ponteiro para o início da string
    while (!isEmpty(&p)) {
        *pt = pop(&p);
        pt++;
    }
    // Garante que a string termine corretamente com o caractere nulo
    *pt = '\0'; 
    
    printf("String invertida: %s\n", texto);
    
    return 0;
}
