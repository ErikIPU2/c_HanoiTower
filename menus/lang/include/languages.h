//
// Created by erikborella on 11/07/19.
//

#ifndef C_HANOITOWER_LANGUAGES_H
#define C_HANOITOWER_LANGUAGES_H

#define MAX_LANGUAGE_NUMBER 10

typedef struct {
    char *langName;
    char *introMenu;
    char *optionMenu;
    char *promptError;
    char *promptMenu;
    char *promptChangeNumberTower;
    char *changeTowerStylesMenu;
    char *promptChangeValue;
    char *promptPause;
    char *instructionsMenu;
    char *promptTowerSize;
    char *promptSelectTower;
    char *selectTowerError;
    char *moveTowerError;
} LanguageStruct;

extern unsigned int languagePointer;
extern unsigned int actualLanguage;

extern char** lastLanguageGerate;

extern LanguageStruct languages[MAX_LANGUAGE_NUMBER];

void addLanguage(LanguageStruct language);
_Bool setLanguage(int index);
LanguageStruct getActualLanguage(void);
char** getLanguages(void);

#endif //C_HANOITOWER_LANGUAGES_H
