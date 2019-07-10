//
// Created by erikborella on 09/07/19.
//

#include <stdlib.h>
#include "../../towersArray.c"

#include "../include/creatorHelper.h"

Tower createTower(int len) {
    const int ALLOC_SIZE = len * sizeof(int);

    Tower tower;

    tower.tower = (int*) malloc(ALLOC_SIZE);
    tower.len = len;
    tower.pointer = len -1;

    return tower;
}

void freeTower(Tower *tower) {
    free(tower->tower);
}

TowersArray createTowersArray(len) {
    const int ALLOC_SIZE = len * sizeof(Tower);

    TowersArray towersArray;

    towersArray.towers = (Tower*) malloc(ALLOC_SIZE);
    towersArray.len = len;

    return towersArray;
}

void freeTowersArray(TowersArray *towersArray) {
    free(towersArray->towers);
}
