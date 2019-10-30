//
// Created by erikborella on 11/07/19.
//

#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>

#include "../include/languages.h"

unsigned int languagePointer = 0;
unsigned int actualLanguage = 0;

char** lastLanguageGerate;

LanguageStruct languages[MAX_LANGUAGE_NUMBER];

void addLanguage(LanguageStruct language) {
    if (languagePointer < MAX_LANGUAGE_NUMBER) {
        languages[languagePointer] = language;
        languagePointer++;
    }
}

void loadLanguages(void) {
    DIR *d;
    struct dirent *dir;
    d = opendir(LANGS_DIR);

    if (d) {
        while ((dir = readdir(d)) != NULL) {
            if (dir->d_name[0] != '.') {
                readFile(dir->d_name);
            }
        }
        closedir(d);
    }
}

void readFile(char* fileName) {
    FILE *fp;
    char str[MAX_CHAR];
    char filePath[MAX_CHAR];
    strcpy(filePath, LANGS_DIR);
    strcat(filePath, fileName);

    LanguageStruct language = allocLanguageStruct(255);

    fp = fopen(filePath, "r");
    if (fp == NULL) {
        printf("%s%s", "Error to open file: ", filePath);
    } else if (checkNumberOfLines(filePath)) {
        int lineCounter = 0;
        while (fgets(str, MAX_CHAR, fp) != NULL) {
            parseNewLineCaracters(str);
            switch (lineCounter) {
                case 0:
                    strcpy(language.langName, str);
                    break;
                case 1:
                    strcpy(language.introMenu, str);
                    break;
                case 2:
                    strcpy(language.optionMenu, str);
                    break;
                case 3:
                    strcpy(language.promptMenu, str);
                    break;
                case 4:
                    strcpy(language.promptError, str);
                    break;
                case 5:
                    strcpy(language.promptChangeNumberTower, str);
                    break;
                case 6:
                    strcpy(language.changeTowerStylesMenu, str);
                    break;
                case 7:
                    strcpy(language.promptChangeValue, str);
                    break;
                case 8:
                    strcpy(language.promptPause, str);
                    break;
                case 9:
                    strcpy(language.instructionsMenu, str);
                    break;
                case 10:
                    strcpy(language.promptTowerSize, str);
                    break;
                case 11:
                    strcpy(language.promptSelectTower, str);
                    break;
                case 12:
                    strcpy(language.selectTowerError, str);
                    break;
                case 13:
                    strcpy(language.moveTowerError, str);
                    break;
                case 14:
                    strcpy(language.winMessage, str);
                    break;
            }

            lineCounter++;
        }
        addLanguage(language);
    } else {
        printf("%s%s%s\n", "File: ", filePath, " is incomplete");
    }
    fclose(fp);
}

bool checkNumberOfLines(char *filePath) {
    FILE *fp;
    char str[MAX_CHAR];

    int counter = 0;

    fp = fopen(filePath, "r");
    while (fgets(str, MAX_CHAR, fp) != NULL) {
        counter++;
    }

    fclose(fp);

    return counter == 15;
}

LanguageStruct allocLanguageStruct(int size) {
    LanguageStruct language;

    const int ALLOC_SIZE = sizeof(char) * size;

    language.langName = (char*) malloc(ALLOC_SIZE);
    language.introMenu = (char*) malloc(ALLOC_SIZE);
    language.optionMenu = (char*) malloc(ALLOC_SIZE);
    language.promptMenu = (char*) malloc(ALLOC_SIZE);
    language.promptError = (char*) malloc(ALLOC_SIZE);
    language.promptChangeNumberTower = (char*) malloc(ALLOC_SIZE);
    language.changeTowerStylesMenu = (char*) malloc(ALLOC_SIZE);
    language.promptChangeValue = (char*) malloc(ALLOC_SIZE);
    language.promptPause = (char*) malloc(ALLOC_SIZE);
    language.instructionsMenu = (char*) malloc(ALLOC_SIZE);
    language.promptTowerSize = (char*) malloc(ALLOC_SIZE);
    language.promptSelectTower = (char*) malloc(ALLOC_SIZE);
    language.selectTowerError = (char*) malloc(ALLOC_SIZE);
    language.moveTowerError = (char*) malloc(ALLOC_SIZE);
    language.winMessage = (char*) malloc(ALLOC_SIZE);

    return language;
}

void parseNewLineCaracters(char* text) {
    int i = 0, counter = 0;
    char cache[MAX_CHAR] = "";
    while (text[i] != '\0') {
        if (text[i] == '\\') {
            if (text[i+1] == 'n') {
                printf("%s", "find");
                cache[counter] = '\n';
                i++;
            }
        } else {
            cache[counter] = text[i];
        }
        i++;
        counter++;
    }
    strcpy(text, cache);
}


bool setLanguage(int index) {
    if (index < languagePointer) {
        actualLanguage = index;
        return true;
    }
    return false;
}

LanguageStruct getActualLanguage(void) {
    return languages[actualLanguage];
}

char** getLanguages(void) {
    free(lastLanguageGerate);
    char** strings = malloc(sizeof(char*) * languagePointer-1);
    for (int i = 0; i < languagePointer; i++) {
        strings[i] = strdup(languages[i].langName);
    }
    lastLanguageGerate = strings;
    return strings;
}