#include <Tashreeb.h>

class Sandbox : public Tashreeb::Application {
public:
    Sandbox(const unsigned int& width, const unsigned int& height, const char* title) : Application(width, height, title) {

    }

    ~Sandbox() {

    }
};

Tashreeb::Application* Tashreeb::CreateApplication() {
    return new Sandbox(1024, 720, "Sandbox");
}
