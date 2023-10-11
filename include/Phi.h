/*============================================
# Filename: Phi.h
# Ver 2.0 2020-10-10
# Copyright (C) 2020 PengLong HongweiHuo JeffreyS.Vitter
#
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License of the License.
#
# Description:
  This is a proxy class of the Phi class.
  This class contains base class pointers for Gen_Phi objects and it provides data types for Gen_Phi objects.
=============================================*/
#include"BaseClass.h"
#include"parmaters.h"
#include"savekit.h"
#include"loadkit.h"
#include"ABS_Phi.h"
#include"Gen_Phi.h"
#include<map>
class Phi
{
	public:
		Phi(parmaters *csa);
		Phi();
		~Phi();

		//integer *GetPhiArray();
		//void GetPhiPiece(integer index,integer num,integer *phipiece);
		i64 GetValue(i64 i);
		i64 RightBoundary(i64 r, i64 L, i64 R);
		i64 LeftBoundary(i64 l, i64 L, i64 R);
		i64 Size();

		integer write(savekit & s);
		integer load(loadkit &s);
		i64**doublec;
		i64*range;
		i64 mini;
		int range_len;

		i64 getEcodeSpace(int type);

	private:
		i64* PreSpace(parmaters * csa);
		ABS_Phi *phi;
		uchar*T;
		i64*code;
		i64*start;
		i64 n;
		void randchar(uchar*T);
		i64 left(i64 i, i64 j);
		i64 right(i64 i, i64 j);
		i64*phivalue;
		integer type;
		i64 blogsize(i64 x);
		i64 puredelta(i64 x);
		uchar lastchar;
};
