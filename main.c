#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct Tower {
    int* tower;
    int len;
    int pointer;
} Tower;


void freeTower(Tower*);
void gerateTower(Tower*, int);
void gerateTower_empty(Tower*, int);
void gerate(Tower*, Tower*, Tower*, int);
void gerate_noMark(Tower*, Tower*, Tower*);
void printLine(int, int, int, char, char);
void printNumber(int, int);
void printSelection(int, int);
void clearScreen();



int main() {

    Tower t1, t2, t3;
    int len, input_sel = 0, input_mov = 0;

    printf("Digite o tamanho da torre: ");
    do {
        scanf("%d", &len);
        if (len < 1) {
            printf("Digite um valor acima de 0: ");
        }
    } while (len < 1);

    gerateTower(&t1, len);
    gerateTower_empty(&t2, len);
    gerateTower_empty(&t3, len);

    while (true) {
        gerate_noMark(&t1, &t2, &t3);

        // if (input_sel < 1 || input_sel > 3) {
        //     printf("Torre selecionada invalida\n");
        // }
        printf("Digite qual torre deseja selecionar: ");
        scanf("%d", &input_sel);

        gerate(&t1, &t2, &t3, input_sel);
        printf("Digite qual torre deseja mover: ");
        scanf("%d", &input_mov);

        
    }


    freeTower(&t1);
    freeTower(&t2);
    freeTower(&t3);

    return 0;
}

void freeTower(Tower* tower) {
    free(tower->tower);
} 

void gerateTower(Tower* tower, int len) {
    tower->tower = (int*) malloc(sizeof(int) * len);
    int i, temp = 1;
    for (i = 0; i < len; i++) {
        tower->tower[i] = temp;
        temp += 2;
    }
    tower->len = len;
    tower->pointer = (len - 1);
}

void gerateTower_empty(Tower* tower, int len) {
    tower->tower = (int*) malloc(sizeof(int) * len);
    tower->len = len;
    tower->pointer = (len - 1);
}

void gerate(Tower* t1, Tower* t2, Tower* t3, int selection) {
    clearScreen();
    if (selection > 0 && selection <= 3) {
        printSelection(t1->len, selection);
    }
    for (int i = 0; i < t1->len; i++) {
        printLine(t1->tower[i], i, t1->len, '-', '|');
        printf("   ");
        printLine(t2->tower[i], i, t2->len, '-', '|');
        printf("   ");
        printLine(t3->tower[i], i, t3->len, '-', '|');
        printf("\n");
    }
    printf("\n");
    printNumber(t1->len, 3);
    printf("\n");
}

void gerate_noMark(Tower* t1, Tower* t2, Tower* t3) {
    clearScreen();
    for (int i = 0; i < t1->len; i++) {
        printLine(t1->tower[i], i, t1->len, '-', '|');
        printf("   ");
        printLine(t2->tower[i], i, t2->len, '-', '|');
        printf("   ");
        printLine(t3->tower[i], i, t3->len, '-', '|');
        printf("\n");
    }
    printf("\n");
    printNumber(t1->len, 3);
    printf("\n");
}

void printLine(int line, int index, int t_len, char style, char style_emp) {
    const int len = (t_len * 2 - 1);

    if (line == 0) {
        const int len = (t_len * 2 - 1) / 2;
        for (int i = 0; i < len; i++){
            printf(" ");
        }

        printf("%c", style_emp);

        for (int i = 0; i < len; i++){
            printf(" ");
        }


    } else {

        for (int i = 0; i < t_len - (index + 1); i++) {
            printf(" ");
        }

        for (int i = 0; i < line; i++) {
            printf("%c", style);
        }

        for (int i = 0; i < t_len - (index + 1); i++) {
            printf(" ");
        }
    }
}

void printNumber(int t_len, int nSpace) {
    const int len = (t_len * 2 - 1);

    for (int cont = 1; cont <= 3; cont++) {
        for (int i = 0; i < len / 2; i++) {
            printf(" ");
        }
        printf("%d", cont);
        for (int i = 0; i < len / 2; i++) {
            printf(" ");
        }
        for (int i = 0; i < nSpace; i++) {
            printf(" ");
        }
    }
}

void printSelection(int t_len, int pos) {
    const int len = (t_len * 2 - 1) / 2;

    for (int cont = 1; cont <= 3; cont++) {
        for (int i = 0; i < len; i++) {
            printf(" ");
        }
        if (pos == cont) {
            printf("⌄");
        } else {
            printf(" ");
        }
        for (int i = 0; i < len; i++) {
            printf(" ");
        }
        printf("   ");
    }

    printf("\n");
    
}

void clearScreen() {
    printf("\033[2J");
}