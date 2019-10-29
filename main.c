#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "menus/lang/include/languages.h"
#include "menus/include/menu.h"
#include <string.h>

#include <dirent.h>


int main() {
    LanguageStruct ptbr;
    ptbr.langName = "pt-br";
    ptbr.introMenu = "Seja bem vindo a torre de hanoi\n1. Como jogar\n2. Jogar\n3. Opcoes\n4. Sair";
    ptbr.optionMenu = "1. Mudar linguagem\n2. Mudar Quantidade de torres\n3. Personalizar torre\n4. Sair";
    ptbr.promptMenu = "Digite o que deseja fazer: ";
    ptbr.promptError = "Voce digitou uma opcao incorreta, tente novamente\n";
    ptbr.promptChangeNumberTower = "Digite a quantidade de torres, minimo 3, atual: %d: ";
    ptbr.changeTowerStylesMenu = "1. Aparencia da torre (Atual: %c)\n2. Palitos da torre (Atual: %c)\n3. Selecao (Atual: %c)\n4. Sair\n";
    ptbr.promptChangeValue = "Digite o novo caractere: ";
    ptbr.promptPause = "Digite qualquer coisa para continuar: ";
    ptbr.instructionsMenu = "A torre de Hanoi e um jogo muito simples\nonde basta voce mover todas as pecas da torre 1, para a torre 3\nMas com a condicao que voce nao pode colocar uma peca maior em sima de uma menor";
    ptbr.promptTowerSize = "Digite o tamanho da torre, minimo 1: ";
    ptbr.promptSelectTower = "Digite a torre que deseja selecionar: ";
    ptbr.selectTowerError = "Torre selecionada invalida, tente novamente";
    ptbr.moveTowerError = "Voce fez um movimento invalido";
    ptbr.winMessage = "Parabens, voce ganhou!";
    addLanguage(ptbr);

    setLanguage(0);
//
//    DIR *d;
//
//    struct dirent *dir;
//    d = opendir(".");
//    if (d) {
//        while ((dir = readdir(d)) != NULL) {
//            printf("%s\n", dir->d_name);
//        }
//        closedir(d);
//    }


    startMenu();

    return 0;
}