cmake_minimum_required(VERSION 3.21)

add_library(Application STATIC Application.hpp Application.cpp)

target_include_directories(Application PUBLIC ${MAIN_PROJECT_DIR}/Libraires)
target_link_libraries(Application PRIVATE WeigherUI)
