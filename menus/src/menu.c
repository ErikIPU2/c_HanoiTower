//
// Created by erikborella on 13/07/19.
//

#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <limits.h>

#include "../include/menu.h"
#include "../lang/include/languages.h"
#include "../include/menuHelper.h"
#include "../../structs/towersArray.c"
#include "../../structs/util/include/creatorHelper.h"
#include "../../hanoiUtils/include/printer.h"
#include "../../hanoiUtils/include/initTower.h"
#include "../../hanoiUtils/include/gameLogics.h"

void initMenu() {
    language = getActualLanguage();
}

void startMenu() {
    initMenu();
    bool introMenu = true;

    while (introMenu) {
        clearScreen();
        int option = menu(language.introMenu, language.promptMenu, language.promptError, 1, 4);
        switch (option) {
            case 1:
                showRules();
                break;
            case 2:
                startGame();
                break;
            case 3:
                showOptions();
                break;
            case 4:
                introMenu = false;
                break;
        }
    }
}

void startGame() {
    int towerSize = menu("" ,language.promptTowerSize, language.promptError, 1, INT_MAX);
    TowersArray towers = createTowersArray(numberTower);

    for(int i = 0; i < towers.len; i++) {
        towers.towers[i] = createTower(towerSize);
    }

    initTowers(&towers);

    while (!isWin(&towers)) {
        printTowers(&towers, -1);
        int selection = menu("", language.promptSelectTower, language.selectTowerError, 1, (towers.len-1));
        printTowers(&towers, selection);
        int selectionTo = menu("", language.promptSelectTower, language.selectTowerError, 1, (towers.len-1));
        bool moved = move(&towers, selection, selectionTo);
        if (!moved) {
            printf("%s", language.moveTowerError);
        }
        //TODO: sdasda
    }


    freeTowersArray(&towers);
}

void showRules() {
    clearScreen();
    printf("%s\n\n", language.instructionsMenu);
    pause(language.promptPause);
}

void showOptions() {
    bool optionMenu = true;

    while (optionMenu) {
        clearScreen();
        int option = menu(language.optionMenu, language.promptMenu, language.promptError, 1, 4);
        switch (option) {
            case 1:
                changeLanguage();
                break;
            case 2:
                changeNumberTower();
                break;
            case 3:
                changeTowerStyles();
                break;
            case 4:
                optionMenu = false;
                break;
        }
    }
}

void changeLanguage() {
    char **langs = getLanguages();

    char tempString[255] = {'\0'};
    char buff[255] = {'\0'};

    for (int i = 0; i < languagePointer; i++) {
        sprintf(buff, "%d. %s\n", (i+1), langs[i]);
        strcat(tempString, buff);
        buff[0] = '\0';
    }

    sprintf(buff, "%d. %s\n", (languagePointer+1), "Sair");
    strcat(tempString, buff);

    clearScreen();
    int option = menu(tempString, language.promptMenu, language.promptError, 1, languagePointer+1) - 1;

    if (option != languagePointer) {
        setLanguage(option);
        initMenu();
    }

}

void changeNumberTower() {
    char buff[255];
    sprintf(buff, language.promptChangeNumberTower, numberTower);

    int option = menu("", buff, language.promptError, 3, INT_MAX);

    numberTower = option;
}

void changeTowerStyles() {
    bool changeTowerMenu = true;

    while (changeTowerMenu) {
        clearScreen();
        char buff[255];
        sprintf(buff, language.changeTowerStylesMenu, styles.towerStyle, styles.emptyStyle, styles.selectionStyle);

        int option = menu(buff, language.promptMenu, language.promptError, 1, 4);
        switch (option) {
            case 1:
                changeValue(&styles.towerStyle);
                break;
            case 2:
                changeValue(&styles.emptyStyle);
                break;
            case 3:
                changeValue(&styles.selectionStyle);
                break;
            case 4:
                changeTowerMenu = false;
                break;
        }
    }
}

void changeValue(char *value) {
    printf("%s", language.promptChangeValue);
    scanf(" %c", value);
}