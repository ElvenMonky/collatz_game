/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, June 2023
*/
#pragma once

#include <algorithm>
#include <execution>
#include <vector>

/* If running on Mac, uncomment following lines and use `pstld.h` from https://github.com/mikekazakov/pstld (MIT License) by Michael G. Kazakov.
* This is because clang under Mac does not support `std::execution::par` even with `-std=c++2b`
*/
//#define PSTLD_HEADER_ONLY   // no prebuilt library, only the header
//#define PSTLD_HACK_INTO_STD // export into namespace std
//#include "pstld.h"

using namespace std;

void parallel_search(__uint16_t J1, __uint16_t J2, __uint16_t K1, __uint16_t K2,
	void (*iteration)(__uint16_t, __uint16_t, __uint16_t, __uint16_t, __uint16_t)
) {
#if defined(PARALLEL_SEARCH)
	vector<__uint32_t> JK;
	JK.resize((J2-J1)*(K2-K1));
#endif
	for (__uint16_t J0 = 0; J0 < J2-J1; ++J0) {
		for (__uint16_t K0 = 0; K0 < K2-K1; ++K0) {
#if defined(PARALLEL_SEARCH)
			JK[J0*(K2-K1)+K0] = ((__uint32_t)(J2-J1-J0-1)<<16)+K0;
#else
			iteration(J1, J2, K2, J0, K0+K1);
#endif
		}
	}
#if defined(PARALLEL_SEARCH)
	std::for_each(std::execution::par, JK.begin(), JK.end(), [&](__uint32_t& jk) {
		iteration(J1, J2, K2, jk>>16, (__uint16_t)jk+K1);
	});
#endif
}
