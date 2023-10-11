# CMakeLists.txt in the 'simd' folder

add_library(simd STATIC simd.cpp)
target_include_directories(simd PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Set AVX-512 optimization flags for simd.cpp
target_compile_options(simd PRIVATE -mavx512vl -mlzcnt -mavx512f -mavx512vpopcntdq)

