//
// Created by erikborella on 11/07/19.
//

#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

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