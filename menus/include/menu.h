//
// Created by erikborella on 13/07/19.
//

#ifndef C_HANOITOWER_MENU_H
#define C_HANOITOWER_MENU_H

#include "../lang/include/languages.h"
#include "../../structs/styles.c"

static LanguageStruct language;
static StylesStruct styles = {'-', '|', '^'};

static int numberTower = 3;

void initMenu();
void startMenu();
void startGame();
void showRules();
void showOptions();
void changeLanguage();
void changeNumberTower();
void changeTowerStyles();
void changeValue(char *value);

#endif //C_HANOITOWER_MENU_H
