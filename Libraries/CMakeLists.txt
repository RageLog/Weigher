# cmake version to be used
cmake_minimum_required(VERSION 3.10)
project(Libraries)

GetSubDirList(SUBDIRS ${CMAKE_CURRENT_SOURCE_DIR})
FOREACH(subdir ${SUBDIRS})
    if(NOT ${subdir}  STREQUAL "misc")
        ADD_SUBDIRECTORY(${subdir})
    endif()
ENDFOREACH()