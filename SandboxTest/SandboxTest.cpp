#include <Tashreeb.h>

class Sandbox : public Tashreeb::Application {
public:
    Sandbox(const unsigned int& width, const unsigned int& height) : Application(width, height) {

    }

    ~Sandbox() {

    }
};

Tashreeb::Application* Tashreeb::CreateApplication() {
    return new Sandbox(1024, 720);
}
