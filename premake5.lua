project "imgui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imgui_rectpack.h",
        "imgui_textedit.h",
        "imgui_truetype.h",
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "Off"

    filter "configurations:Debug"
        staticruntime "off"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        staticruntime "off"
        runtime "Release"
        optimize "on"