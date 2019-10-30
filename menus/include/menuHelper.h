//
// Created by erikborella on 12/07/19.
//

#ifndef C_HANOITOWER_MENUHELPER_H
#define C_HANOITOWER_MENUHELPER_H

void clearScreen(void);
bool verifyOption(int minOption, int maxOption, int option);
int menu(char* message, char* prompt, char* error, int minOption, int maxOption);
void pause(char *message);

#endif //C_HANOITOWER_MENUHELPER_H
