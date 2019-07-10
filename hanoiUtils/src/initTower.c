//
// Created by erikborella on 09/07/19.
//

#include "../../structs/towersArray.c"

#include "../include/initTower.h"

void initTowers(TowersArray *towersArray) {
    for (int towerPtr = 0; towerPtr < towersArray->len; towerPtr++) {
        Tower *tower = &(towersArray->towers[towerPtr]);
        if (towerPtr == 0) {
            initTower(tower);
        } else {
            initTower_empty(tower);
        }
    }
}

void initTower(Tower *tower) {
    int temp = 1;
    for (int i = 0; i < tower->len; i++) {
        tower->tower[i] = temp;
        temp += 2;
    }
    tower->pointer = -1;
}

void initTower_empty(Tower *tower) {
    for (int i = 0; i < tower->len; i++) {
        tower->tower[i] = 0;
    }
}
