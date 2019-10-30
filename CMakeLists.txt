cmake_minimum_required(VERSION 3.14)
project(c_HanoiTower C)

set(CMAKE_C_STANDARD 99)

add_executable(c_HanoiTower main.c structs/tower.c structs/towersArray.c structs/util/src/creatorHelper.c structs/util/include/creatorHelper.h hanoiUtils/src/initTower.c hanoiUtils/include/initTower.h hanoiUtils/src/printer.c hanoiUtils/include/printer.h hanoiUtils/src/gameLogics.c hanoiUtils/include/gameLogics.h menus/lang/src/languages.c menus/lang/include/languages.h menus/src/menuHelper.c menus/include/menuHelper.h menus/src/menu.c menus/include/menu.h structs/styles.c)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "/home/erikborella/CLionProjects/c_HanoiTower/dist")