#ifndef _PARMATERS
#define _PARMATERS
#include "../divsufsort/divsufsort64.h"
#include "BaseClass.h"
typedef struct {
    integer alphabetsize;
    i64 n;
    integer SL;
    integer L;

    i64* start;
    uchar lastchar;
    saidx64_t*& SA;
    uchar*& T;
    i64* code;
} parmaters;
#endif
