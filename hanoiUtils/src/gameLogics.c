//
// Created by erikborella on 10/07/19.
//

#include "../../structs/towersArray.c"
#include <stdbool.h>

#include "../include/gameLogics.h"

bool checkMove(TowersArray *towersArray, int select, int to) {

    Tower *tSelect = &(towersArray->towers[select]);
    Tower *tTo = &(towersArray->towers[to]);

    if ((select == to) ||
            (select < 0) ||
            (select > towersArray->len-1) ||
            (to < 0) ||
            (to > towersArray->len-1)) {
        return false;
    }

    if (tSelect->pointer == towersArray->towers->len-1) {
        return false;
    }

    if (tTo->pointer == towersArray->towers->len-1) {
        return true;
    }

    if (tSelect->tower[tSelect->pointer+1] < tTo->tower[tTo->pointer+1]) {
        return true;
    }

    return false;
}

bool move(TowersArray *towersArray, int select, int to) {
    select -= 1;
    to -= 1;
    if (!checkMove(towersArray, select, to)) {
        return false;
    } else {
        Tower *tSelect = &(towersArray->towers[select]);
        Tower *tTo = &(towersArray->towers[to]);

        int temp = tSelect->tower[tSelect->pointer+1];
        tSelect->tower[tSelect->pointer+1] = tTo->tower[tTo->pointer];
        tTo->tower[tTo->pointer] = temp;
        tSelect->pointer += 1;
        tTo->pointer -= 1;
        return true;
    }
}