cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(test LANGUAGES C CXX)


enable_testing()
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3  -march=native")


find_package(GTest REQUIRED)
find_package(Threads REQUIRED)

add_executable(test_dna test.cpp)

include_directories(${GTEST_INCLUDE_DIRS})
target_link_libraries(test_dna PUBLIC ${GTEST_BOTH_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})

