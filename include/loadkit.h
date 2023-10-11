/*============================================
# Filename: loadkit.h
# Ver 2.0 2020-10-10
# Copyright (C) 2020 PengLong HongweiHuo JeffreyS.Vitter
#
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License of the License.
#
# Description:
=============================================*/
#ifndef _LOADKIT
#define _LOADKIT
#include<stdlib.h>
#include<stdio.h>
#include"BaseClass.h"
#include<iostream>
using namespace std;
class loadkit
{
	public:
		loadkit(const char * file);
		~loadkit();
		integer loadi64(i64 & value);
		integer loadu64(u64 & value);
		integer loadinteger(integer & value);
		integer loadu32(u32 & value);
		integer loadi16(i16 & value);
		integer loadu16(u16 & value);
		integer loadi64array(i64 * value,integer len);
		i64 loadi64array(i64 * value,i64 len);
		integer loadu64array(u64 * value,integer len);
		integer loadintegerarray(integer * value,integer len);
		integer loadu32array(u32 * value,integer len);
		i64 loadu32array(u32 * value,i64 len);
		integer loadi16array(i16 * value,integer len);
		integer loadu16array(u16 * value,integer len);
		void close();
	private:
		FILE * r;
};
#endif


