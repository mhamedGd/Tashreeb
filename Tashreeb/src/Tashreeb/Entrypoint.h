#pragma once

#ifdef TB_PLATFORM_WINDOWS
    
    extern Tashreeb::Application* Tashreeb::CreateApplication();

    int main(void)
    {
        auto app = Tashreeb::CreateApplication();
        app->Run();
        delete app;
        return 0;
    }
#endif
