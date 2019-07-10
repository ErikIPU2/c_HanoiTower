#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "structs/towersArray.c"
#include "structs/util/include/creatorHelper.h"
#include "hanoiUtils/include/initTower.h"
#include "hanoiUtils/include/printer.h"

int numberTower = 7;
int towerSize = 6;

int main() {
    TowersArray towersArray = createTowersArray(numberTower);

    for (int i = 0; i < towersArray.len; i++) {
        towersArray.towers[i] = createTower(towerSize);
    }

    initTowers(&towersArray);
    printTowers(&towersArray, 10);

    return 0;
}