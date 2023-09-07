/*============================================
# Filename: test_gecsa.cpp
# Ver 2.0 2021-05-09
# Copyright (C) 2020 ZongtaoHe PengLong HongweiHuo JeffreyS.Vitter
#
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License of the License.
#
# Description:
# @FilePath: /GenCSA_savefile/GeCSA/test_gecsa.cpp
=============================================*/  
#include<stdlib.h>
#include<string>
#include"CSA.h"
#include<ctime>
#include<fstream>
#include<iostream>
#include<map>

using namespace std;
void SplitString(const string& s, vector<string>& v, const string& c)
{
    string::size_type pos1, pos2;
    pos2 = s.find(c);
    pos1 = 0;
    while(string::npos != pos2)
    {
        v.push_back(s.substr(pos1, pos2-pos1));

        pos1 = pos2 + c.size();
        pos2 = s.find(c, pos1);
    }
    if(pos1 != s.length())
        v.push_back(s.substr(pos1));
}

int FileExist(const char* fname)
{
    return (access(fname,0)==0);
}

int main(int argc, char const *argv[])
{

    if(argc < 2){
		cout<<"usage:./build_csa filename [block_size] [sample_size] [test_times]"<<endl;
		return 1;
	}
    string filepath(argv[1]);
    int L = 256,D = 128,testTimes = 5000;
    if(argc > 2){
        L = atoi(argv[2]);
    }
    if(argc > 3){
        D = atoi(argv[3]);
    }
    if(argc > 4){
        testTimes = atoi(argv[4]);
    }
    string indexname = filepath + to_string(L) + to_string(D) + ".geindex";
    CSA *test_csa;
    if(FileExist(indexname.data())){
        test_csa = new CSA();
        test_csa->load(indexname.data());
        cout<<"index load"<<endl;
    }else{
        cout<<"need build index first. use ./build_gecsa filename [block_size] [sample_step]"<<endl;
        exit(0);
    }
    i64 nums = 0;
    uchar p[100] = {"Pattern|http://dbpe"};
    test_csa->counting(p, nums);
    i64 *poss;
    i64 posnum;
    poss = test_csa->locating(p, posnum);
    for(u64 i = 0;i < posnum;++i){
        cerr<<poss[i]<<endl;
        cerr<<test_csa->extracting(poss[i], 20)<<endl;
    }
    // test_csa->TestForIndex(testTimes);
	// test_csa->compressRatio();
    return 0;
}
