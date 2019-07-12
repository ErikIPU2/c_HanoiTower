//
// Created by erikborella on 09/07/19.
//

#ifndef C_HANOITOWER_PRINTER_H
#define C_HANOITOWER_PRINTER_H

void clearScreen(void);
void printTowers(TowersArray*, int selection);
void printLine(TowersArray*, int index, char style, char emptyStyle);
void printSelection(TowersArray*, int selection);
void printNumber(TowersArray*);

#endif //C_HANOITOWER_PRINTER_H
