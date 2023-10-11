#pragma GCC target("avx512vl,avx512f,avx512vpopcntdq")
#include "simd.h"

namespace simd {
int64_t* vec_and(int64_t* p1, int64_t* p2) {
    assert(p1 != nullptr);
    assert(p2 != nullptr);
    __m256i r1 = _mm256_loadu_epi64(p1);
    __m256i r2 = _mm256_loadu_epi64(p2);
    r1 = _mm256_and_si256(r1, r2);
    int64_t* ret = new int64_t[4];
    _mm256_storeu_epi64(ret, r1);
    return ret;
}

char popcnt(int64_t num) { return _mm_popcnt_u64(num); }

char lzcnt(int64_t num) { return _lzcnt_u64(num); }

int popcnt4(const int64_t* p) {
    assert(p != nullptr);
    int sum = _mm_popcnt_u64(p[0]) + _mm_popcnt_u64(p[1]) + _mm_popcnt_u64(p[2]) + _mm_popcnt_u64(p[3]);
    return sum;
}
} // namespace simd
