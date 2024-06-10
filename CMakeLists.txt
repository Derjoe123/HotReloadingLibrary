cmake_minimum_required(VERSION 3.0)
project(HotReload)
add_executable(HotReload src/main.cpp)
target_include_directories(HotReload PRIVATE include)
#find_package(Curses REQUIRED)
#include_directories(${CURSES_INCLUDE_DIR})
#target_link_libraries(HotReload ${CURSES_LIBRARIES})
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)


add_library(HotReloadLib SHARED src/libExample/libMain.cpp)
