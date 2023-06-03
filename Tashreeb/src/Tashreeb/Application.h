#pragma once

#include "Core.h"

namespace Tashreeb {
	class TASHREEB_API Application
	{
	public:
		explicit Application(const unsigned int& width, const unsigned int& height, const char* title);
		virtual ~Application();

		void Run();
	};

	Application* CreateApplication();
}

