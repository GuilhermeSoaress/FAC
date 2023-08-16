#include <stdio.h>

int elemDistintos(int *v, int tamanho){
    int cont = 0;
    for(int i=0; i<tamanho; i++){
        if (v[i-1] != v[i]) cont = cont + 1;
    }
    return cont;
}

int main(){

    int vetor[10] = {1, 1, 2, 2, 3, 3, 4, 4, 5, 5};
    int qtdElementos = elemDistintos(vetor, 10);
    printf("%d", qtdElementos);
}