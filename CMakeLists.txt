cmake_minimum_required(VERSION 3.17)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(GeCSA LANGUAGES C CXX)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3  -march=native")

set(CMAKE_BUILD_TYPE Debug)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -march=native")
# set(CMAKE_BUILD_TYPE Release)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mavx -mlzcnt")
add_subdirectory(divsufsort) 

add_subdirectory(Regular) 

add_subdirectory(simd)

file(GLOB_RECURSE source CONFIGURE_DEPENDS ./include/*.h ./include/*.hpp ./src/*.cpp)

add_executable(gencsa Gen_CSA.cpp ${source})

# add_executable(correct Correct.cpp)

target_link_libraries(gencsa PUBLIC divsufsort Regular simd)


# #target_compile_options(gencsa PUBLIC -mavx512f)
# target_compile_options(gencsa PUBLIC -mavx512vl)
# target_compile_options(gencsa PUBLIC -mlzcnt)
# #target_compile_options(gencsa PUBLIC -mavx2)
# target_compile_options(gencsa PUBLIC -mavx512vpopcntdq)
