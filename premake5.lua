workspace "Tashreeb"
	architecture "x86"
	startproject "SandboxTest"
	
	configurations
	{
		"Debug",
		"Release"
	}
	
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
userprojectname = "SandboxTest"

project "Tashreeb"
	location "Tashreeb"
	kind "SharedLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	postbuildcommands {
		'xcopy "$(SolutionDir)bin\\' .. outputdir .. '\\%{prj.name}\\%{prj.name}.dll" "$(SolutionDir)bin\\' .. outputdir .. '\\' .. userprojectname .. '\\" /e /q /i'
	}
	
	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}
	
	includedirs
	{
		"%{prj.name}/include"
	}
	
	libdirs
	{
		"%{prj.name}/lib"
	}
	
	links 
	{
		"raylib",
		"Winmm"
	}
	
	
	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "10.0.22000.0"
		
		defines 
		{
			"TB_PLATFORM_WINDOWS",
			"TASHREEB_BUILD_DLL",
			"WIN32"
		}
		
		filter "configurations:Debug"
			defines "TB_DEBUG"
			symbols "On"
			buildoptions "/MD"
			
		filter "configurations:Release"
			defines "TB_RELEASE"
			optimize "On"
			
		
		
project "SandboxTest"
		location "SandboxTest"
		kind "ConsoleApp"
		language "C++"
		
		
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}
	
	includedirs
	{
		"Tashreeb/src"
	}
	
	links 
	{
		"Tashreeb"
	}
	
	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "10.0.22000.0"
		
		defines 
		{
			"TB_PLATFORM_WINDOWS",
			"WIN32"
		}
		
		
		filter "configurations:Debug"
			defines "TB_DEBUG"
			buildoptions "/MD"
			symbols "On"
			
		filter "configurations:Release"
			defines "TB_RELEASE"
			optimize "On"
		
