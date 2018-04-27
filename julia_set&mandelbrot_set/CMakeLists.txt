cmake_minimum_required(VERSION 3.9)
project(P3)

set(CMAKE_CXX_STANDARD 17)

include_directories(
        lib/glfw/include
        lib/glew/include
        lib/soil/inc
)

add_subdirectory(lib/glfw)
add_subdirectory(lib/soil)
add_executable(P3 main.cpp glew.c)
target_link_libraries(P3 glfw soil opengl32)
