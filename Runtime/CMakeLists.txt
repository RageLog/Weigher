cmake_minimum_required(VERSION 3.21)
project(RUNTIME)

add_subdirectory(Application)

add_executable(${APPLICATION_NAME} main.cpp)

#Include dır
target_link_libraries(${APPLICATION_NAME} PRIVATE Application)
target_include_directories(${APPLICATION_NAME} PRIVATE ${MAIN_PROJECT_DIR}/Runtime/Application)