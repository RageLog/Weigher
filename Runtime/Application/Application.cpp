#include "Application.hpp"

#include <iostream>


namespace CD {
    int Application::run()
    {
        std::cout << APPLICATION_NAME << "\n";
        return 0;
    }
}