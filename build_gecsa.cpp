/*============================================
# Filename: build_gecsa.cpp
# Ver 2.0 2020-10-10
# Copyright (C) 2020 PengLong HongweiHuo JeffreyS.Vitter
#
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License of the License.
#
# Description: 
=============================================*/
#include<stdlib.h>
#include<string.h>
#include"CSA.h"
#include<ctime>
#include<fstream>
#include<iostream>
#include<map>

using namespace std;


int main(int argc, char** argv){

	if(argc < 2){
		cout<<"./build_gecsa filename [block_size] [sample_step]"<<endl;
		return 1;
	}
	string filepath(argv[1]);
    int L = 256,D = 128;
    if(argc > 2){
        L = atoi(argv[2]);
    }
    if(argc > 3){
        D = atoi(argv[3]);
    }
	CSA *test = new CSA(argv[1],L,D);
	
	string indexname = filepath + to_string(L) + to_string(D) + ".geindex";
	test->save(indexname.data());
	return 0;
}



