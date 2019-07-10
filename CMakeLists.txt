cmake_minimum_required(VERSION 3.14)
project(c_HanoiTower C)

set(CMAKE_C_STANDARD 99)

add_executable(c_HanoiTower main.c structs/tower.c structs/towersArray.c structs/util/src/creatorHelper.c structs/util/include/creatorHelper.h hanoiUtils/src/initTower.c hanoiUtils/include/initTower.h hanoiUtils/src/printer.c hanoiUtils/include/printer.h)