/*============================================
# Filename: CSA.h
# Ver 2.0 2020-10-10
# Copyright (C) 2020 PengLong HongweiHuo JeffreyS.Vitter
#
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License of the License.
#
# Description:
  compressed suffix array,a self-index structure.
  CSA(filename) will build a csa-index for a text named filename.
=============================================*/
#pragma once
#include <string.h>
#include <time.h>
#include <unistd.h>

#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <unordered_map>
#include <vector>

#include "../Regular/regular_analysis.h"
#include "../divsufsort/divsufsort64.h"
#include "BaseClass.h"
#include "InArray.h"
#include "Phi.h"
#include "loadkit.h"
#include "parmaters.h"
#include "savekit.h"
#include "timer.h"
using namespace std;
/*
    CSA.h存放所有接口
*/

class CSA {
public:
    /*
        CSA build. default to blocksize=256，S=256
    */
    CSA(){};
    CSA(const char *sourcefile, integer L = 256, integer D = 256);
    ~CSA();

    /*
        CSA basic query operations
    */
    // bool existential(const uchar * Pattern);
    void counting(const uchar *Pattern, i64 &num);
    i64 *locating(const uchar *Pattern, i64 &num);
    uchar *extracting(i64 start, integer len);

    /*
        Index files are saved and loaded
    */
    integer save(const char *indexfile);
    integer load(const char *indexfile);

    /*
        Index related information
    */
    integer getAlphabetsize();
    i64 getN();
    i64 sizeInByte();
    i64 sizeInByteForLocate();
    i64 sizeInByteForCount();
    double compressRatio();
    double compressRatioForCount();
    double compressRatioForLocate();

    i64 n;

    void TestForCount(int count = 5000);
    void TestForExtract(int count = 5000);
    void TestForLocate(int count = 5000);
    void TestForIndex(int index_time = 5000);

    uchar *T;

    // Count Phi encoding proportion space
    double compressRatioforEcodeInPhi(int type);
    double compressRatioforEcodeInAll(int type);
    // Count SA sampling proportion space
    double compressRationforSA();
    // Count inverse SA sampling proportion space
    double compressRationforRank();
    double compressRationforRSD();
    double compressRatioforallsample();

private:
    CSA(const CSA &);

    void CreateSupportStructer(parmaters *csa); // The main function for SA sampling, calculating/compressing phi
    void newEnumerative2(i64 l, i64 r,
                         i64 *&pos);              // optimized locate ops., does not contain the count query, only skips
    i64 newInverse(i64 i);                        // for extract
    i64 newPhi_list(i64 i, i64 &Lpre, i64 &Rpre); // for extract, binary search on the C table
    i64 newPhi_list(i64 i);
    i64 Character(i64 i); // Subscript mapping of the C table

    void Search2(const uchar *Pattern, i64 &L, i64 &R); // the main function for the count query

    uchar *GetFile(const char *filename); // Read the input file
    void statics(uchar *T);               // Handle information such as the C table

    u64 blog(i64 x);

    int FileExist(const char *fname);

    integer SL, L, D, RD, NewD;
    InArray *SAL;
    InArray *RankL;
    Phi *Phi0;
    i64 *code;
    i64 *incode;
    integer alphabetsize;
    i64 *start;
    uchar lastchar;
    integer Blength;

    InArray *ArrD;

public:
    vector<pair<int64_t, int32_t>> regular_ret;
    int64_t maxlen;
    struct state {
        int32_t id;
        int64_t begin;
        int64_t end;
        explicit state(int32_t i, int64_t b, int64_t e) : id(i), begin(b), end(e) {}
    };
    auto FindBoundary(int64_t left, int64_t right, int64_t PreLeft, int64_t PreRight) -> pair<int64_t, int64_t>;

    inline void store_ret(state *s, int32_t hop);

    void regular_expression_search(const char *regular_expression); // BFS version
    void DFSReSearch(const char* regular_expression);//DFS version

    string ExtractRank(int64_t r, int32_t hop);

    void test_regular();

    void output_re(const char *path);
};
