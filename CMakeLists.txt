cmake_minimum_required(VERSION 3.21)

set(APPLICATION_NAME "Weigher")

set(MAIN_PROJECT_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
set(OUTPUT_DIR "${MAIN_PROJECT_DIR}/Output/")

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

list(APPEND CMAKE_MODULE_PATH "${MAIN_PROJECT_DIR}/CMakeModules")


project(${APPLICATION_NAME} LANGUAGES CXX) 
add_compile_definitions(APPLICATION_NAME="${APPLICATION_NAME}")

set(CMAKE_INCLUDE_CURRENT_DIR ON)

include(DirectoryUtilities)

add_library(project_options INTERFACE)
add_library(project_warnings INTERFACE)

if(MSVC)
        target_compile_options(project_warnings INTERFACE /W4 /WX "/permissive-")
else()
  target_compile_options(project_warnings
                         INTERFACE -Wall -Werror -Wextra -Wshadow -Wnon-virtual-dtor 
                                   -Wold-style-cast -Wcast-align -Wunused -Woverloaded-virtual 
                                   -Wpedantic -Wconversion -Wsign-conversion 
                                   -Wnull-dereference -Wdouble-promotion -Wformat=2 
                         )
  if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    target_compile_options(project_warnings INTERFACE -Wmisleading-indentation -Wduplicated-cond -Wduplicated-branches -Wlogical-op -Wuseless-cast)
    target_link_libraries(project_options INTERFACE stdc++fs)
  endif()
endif()

add_subdirectory(Libraries)
add_subdirectory(Runtime)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_DIR}/libraries)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_DIR}/libraries)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR}/${APPLICATION_NAME}/bin)