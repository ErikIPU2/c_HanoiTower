#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "structs/towersArray.c"
#include "structs/util/creatorHelper.h"

int main() {
    TowersArray towersArray = createTowersArray(5);

    for (int i = 0; i < towersArray.len; i++) {
        towersArray.towers[i] = createTower(4+i);
    }

    printf("%d\n", towersArray.towers[4].len);


    return 0;
}