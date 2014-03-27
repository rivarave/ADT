/* Nama / NIM	: Riva Syafri Rachmatullah / 13512036				*/
/* Nama File	: mesinkar.h 										*/
/* Topik		: ADT MESIN KATA									*/
/* Tanggal		: 10 Oktober 2013									*/
/* Deskripsi	: HEADER MESIN KARAKTER								*/

#ifndef MESINKAR_H
#define MESINKAR_H

/*	File Include */
#include <assert.h>
#include <fcnt1.h>
#include �boolean.h�

#ifndef MARK
#define MARK �.�
#endif

void START(void);
/*	I.S.	: sembarang
	F.S.	: CC adalah karakter pertama pita
	JIka CC==MARK, EOP menyala (True)
	JIka CC!=MARK, EOP padam (False) */

void ADV(void);
/*	I.S.	: CC!=MARK
	F.S.	: CC adalah karakter berikutnya dari CC pada I.S.
	Jika CC==MARK, EOP menyala (true) */

boolean EOP(void);
/*true jika CC==MARK */

#endif