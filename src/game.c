#include "game.h"
#include "raylib.h"

void runGame() {
    BeginDrawing();

    ClearBackground(WHITE);

    DrawText("Hello", 190, 200, 20,
             BLACK);

    EndDrawing();

}
