//
// Created by erikborella on 09/07/19.
//

#include <stdio.h>
#include <stdbool.h>
#include "../../structs/towersArray.c"
#include "../../menus/include/menuHelper.h"

#include "../include/printer.h"

void printTowers(TowersArray *towersArray, int selection) {
    clearScreen();
    if (selection > 0 && selection <= towersArray->len) {
        printSelection(towersArray, selection);
    }
    for (int i = 0; i < towersArray->towers->len; i++) {
        printLine(towersArray, i, '-', '|');
        printf("\n");
    }
    printNumber(towersArray);
    printf("\n\n");
}

void printLine(TowersArray *towersArray, int index, char style, char emptyStyle) {
    for (int towerPtr = 0; towerPtr < towersArray->len; towerPtr++) {
        Tower *tower =  &(towersArray->towers[towerPtr]);
        int line = tower->tower[index];

        if (line == 0) {
            int len = (tower->len * 2 - 1) / 2;

            for (int i = 0; i < len; i++) {
                printf(" ");
            }

            printf("%c", emptyStyle);

            for (int i = 0; i < len; i++) {
                printf(" ");
            }

        } else {
            int len = (tower->len * 2 - line) / 2;

            for (int i = 0; i < len; i++) {
                printf(" ");
            }

            for (int i = 0; i < line; i++) {
                printf("%c", style);
            }

            for (int i = 0; i < len; i++) {
                printf(" ");
            }
        }
        printf("   ");
    }
}


void printSelection(TowersArray *towersArray, int selection) {
    int len = (towersArray->towers->len * 2 - 1) / 2;

    for (int cont = 1; cont <= towersArray->len; cont++) {
        for (int i = 0; i < len; i++) {
            printf(" ");
        }

        if (selection == cont) {
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

void printNumber(TowersArray *towersArray) {
    int len = (towersArray->towers->len * 2 - 1) / 2;

    for (int cont = 1; cont <= towersArray->len; cont++) {
        for (int i = 0; i < len; i++) {
            printf(" ");
        }

        printf("%d", cont);

        for (int i = 0; i < len; i++) {
            printf(" ");
        }

        printf("   ");
    }

}