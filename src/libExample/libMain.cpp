#include <iostream>

#include "../../include/dylib.h"
#include "../libraryDefinition.h"

DYLIB_API int OnLoaded(char* StateData, unsigned int& DataSize) {
    std::cout << "Library loaded with data: " << size_t(StateData) << " and size: " << DataSize << std::endl;
    return 0;
}

DYLIB_API int OnUnloaded(char* StateData, unsigned int& DataSize) {
    std::cout << "Library unloaded with data: " << size_t(StateData) << " and size: " << DataSize << std::endl;
    return 0;
}
