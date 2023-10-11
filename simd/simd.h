#ifndef include_simd_h
#define include_simd_h
#include <assert.h>
#include <immintrin.h>
#pragma once
namespace simd {
int64_t* vec_and(int64_t* p1, int64_t* p2);
char popcnt(int64_t num);
char lzcnt(int64_t num);
int popcnt4(const int64_t* p);
} // namespace simd

#endif
