#include "raylib.h"
#include "general.h"

int main(void) {
  InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "turtix");

  while (!WindowShouldClose()) {
    BeginDrawing();

    ClearBackground(WHITE);

    DrawText("Hello", 190, 200, 20,
             BLACK);

    EndDrawing();
  }
  CloseWindow();
  return 0;
}
