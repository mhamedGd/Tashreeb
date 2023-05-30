#include "Application.h"
#include "raylib/raylib.h"

namespace Tashreeb {
	Application::Application(const unsigned int& width, const unsigned int& height) {
		InitWindow(width, height, "raylib [core] example - basic window");
	}

	Application::~Application() {
		CloseWindow();
	}

	void Application::Run() {
		while (!WindowShouldClose()) {
			BeginDrawing();

			EndDrawing();
		}
	}
}