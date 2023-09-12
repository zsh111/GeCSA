cmake_minimum_required(VERSION 3.17)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(Regular LANGUAGES C CXX)

set(CMAKE_BUILD_TYPE Debug)

add_subdirectory(DFA_analysis)
add_subdirectory(../simd simd_build)

add_executable(regular_analysis regular_analysis.cpp test.cpp)

target_link_libraries(regular_analysis PUBLIC DFA_analysis)
target_link_libraries(regular_analysis PUBLIC simd)

#-----------------------------------------------------------------#
# add_subdirectory(DFA_analysis)

# add_library(Regular regular_analysis.cpp regular_analysis.h)

# target_link_libraries(Regular DFA_analysis simd)

# 用于打印DFA图
# target_compile_options(Regular PUBLIC -DDebug)
