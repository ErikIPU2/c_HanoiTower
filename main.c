#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "menus/lang/include/languages.h"
#include "menus/include/menu.h"
#include <string.h>

#include <dirent.h>


int main() {
    loadLanguages();
    setLanguage(0);
    startMenu();

    return 0;
}