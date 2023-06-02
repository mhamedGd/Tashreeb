#include "Application.h"
#include "raylib/raylib.h"

namespace Tashreeb {
	Application::Application(const unsigned int& width, const unsigned int& height, const char* title) {
		InitWindow(width, height, title);
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