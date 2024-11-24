set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(test.exe test.cpp)
target_include_directories(test.exe PRIVATE include)


