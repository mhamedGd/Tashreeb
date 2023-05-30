#pragma once

#ifdef TB_PLATFORM_WINDOWS
	#ifdef TASHREEB_BUILD_DLL
		#define TASHREEB_API __declspec(dllexport)
	#else
		#define TASHREEB_API __declspec(dllimport)
	#endif // TASHREEB_BUILD_DLL
#else 
	#error TASHREEB ONLY SUPPORTS WINDOWS
#endif // TP_PLATFORM_WINDOWS

