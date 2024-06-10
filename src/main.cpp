#include <ncurses.h>

#include <chrono>
#include <filesystem>
#include <iostream>
#include <thread>

#include "../include/dylib.h"
#include "libraryDefinition.h"
int main(int argc, char** argv) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <library>\n";
        return 1;
    }
    if (!std::filesystem::exists(argv[0])) {
        std::cerr << "File does not exist\n";
        return 1;
    }
    std::string libName = "./" + std::string(argv[1]);
    dylib lib(libName);
    bool* ReturnThread = new bool(false);
    std::thread WatcherThread([&ReturnThread, &lib, &argv, &libName]() {
        char* StateData = nullptr;
        unsigned int StateDataSize = 0;
        std::function<int(char*, unsigned int&)> OnLoaded = lib.get_function<decltype(defs::OnLoaded)>("OnLoaded");
        std::function<int(char*, unsigned int&)> OnUnloaded = lib.get_function<decltype(defs::OnUnloaded)>("OnUnloaded");
        if (OnLoaded) {
            int ret = OnLoaded(StateData, StateDataSize);
            if (ret != 0) {
                std::cout << "ERROR: OnLoaded returned " << ret << std::endl;
            }
        }
        std::filesystem::file_time_type original_time = std::filesystem::last_write_time(argv[1]);
        while (1) {
            std::this_thread::sleep_for(std::chrono::milliseconds(2000));
            if (*ReturnThread) {
                if (OnUnloaded) {
                    int ret = OnUnloaded(StateData, StateDataSize);
                    lib.close();
                    if (ret != 0) {
                        std::cout << "ERROR: OnUnloaded returned " << ret << std::endl;
                    }
                }
                break;
            }
            std::filesystem::file_time_type time = std::filesystem::last_write_time(argv[1]);
            if (time != original_time) {
                if (OnUnloaded) {
                    int ret = OnUnloaded(StateData, StateDataSize);
                    if (ret != 0) {
                        std::cout << "ERROR: OnUnloaded returned " << ret << std::endl;
                    }
                }
                original_time = time;
                lib.close();
                lib.open(libName);
                OnLoaded = lib.get_function<decltype(defs::OnLoaded)>("OnLoaded");
                OnUnloaded = lib.get_function<decltype(defs::OnUnloaded)>("OnUnloaded");
                if (OnLoaded) {
                    int ret = OnLoaded(StateData, StateDataSize);
                    if (ret != 0) {
                        std::cout << "ERROR: OnLoaded returned " << ret << std::endl;
                    }
                }
            }
        }
    });
    std::cout << "Press enter to exit\n";
    getchar();
    *ReturnThread = true;
    WatcherThread.join();
    delete ReturnThread;
    return 0;
}
