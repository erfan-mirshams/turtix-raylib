#include "raylib.h"
#include "general.h"
#include "game.h"


int main(void) {
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, GAME_TITLE);

  while (!WindowShouldClose()) {
    runGame();
  }
  CloseWindow();
  return 0;
}
