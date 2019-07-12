//
// Created by erikborella on 12/07/19.
//

#include <stdbool.h>
#include <stdio.h>

#include "../include/menuHelper.h"

void clearScreen(void) {
    for (int i = 0; i < 100; i++) {
        printf("\n");
    }
}

bool verifyOption(int minOption, int maxOption, int option) {
    if (option < minOption || option > maxOption) {
        return false;
    }
    return true;
}

int menu(char* message, char* prompt, char* error, int minOption, int maxOption) {
    int option = 0;
    bool checker = false;

    while (!checker) {
        clearScreen();
        printf("%s\n", message);
        printf("%s", prompt);

        scanf("%d", &option);
        checker = verifyOption(minOption, maxOption, option);
        if (!checker) {
            printf("%s\n", error);
        }
    }

    return option;
}