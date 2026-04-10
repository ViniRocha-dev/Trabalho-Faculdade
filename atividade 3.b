#include <stdio.h>
#include <stdlib.h>

typedef struct Documento {
    int id;
    int numPaginas;
    int prioridade;
    struct Documento* prox;
} Documento;

typedef struct {
    Documento* inicio;
} FilaImpressao;

void inicializar(FilaImpressao* f) {
    f->inicio = NULL;
}

void inserirDocumento(FilaImpressao* f, int id, int paginas, int prioridade) {
    Documento* novo = (Documento*)malloc(sizeof(Documento));
    if (novo == NULL) return;
    
    novo->id = id;
    novo->numPaginas = paginas;
    novo->prioridade = prioridade;
    novo->prox = NULL;
    
    if (f->inicio == NULL || prioridade < f->inicio->prioridade) {
        novo->prox = f->inicio;
        f->inicio = novo;
    } 
    else {
        Documento* atual = f->inicio;
        while (atual->prox != NULL && atual->prox->prioridade <= prioridade) {
            atual = atual->prox;
        }
        novo->prox = atual->prox;
        atual->prox = novo;
    }
    printf("Documento %d enfileirado.\n", id);
}

void processarImpressao(FilaImpressao* f) {
    printf("\n=== Processando Fila de Impressao ===\n");
    while (f->inicio != NULL) {
        Documento* temp = f->inicio;
        printf("Imprimindo Doc ID: %d | Paginas: %d | Prioridade: %d\n", 
                temp->id, temp->numPaginas, temp->prioridade);
        
        f->inicio = f->inicio->prox;
        free(temp);
    }
}

int main() {
    FilaImpressao fila;
    inicializar(&fila);
    
    int opcao, id, pag, prio;
    
    do {
        printf("\n1. Adicionar Documento\n2. Imprimir Todos e Sair\nOpcao: ");
        scanf("%d", &opcao);
        
        if (opcao == 1) {
            printf("ID, Numero de Paginas e Prioridade (ex: 101 5 1): ");
            scanf("%d %d %d", &id, &pag, &prio);
            inserirDocumento(&fila, id, pag, prio);
        }
    } while (opcao != 2);
    
    processarImpressao(&fila);
    
    return 0;
}
