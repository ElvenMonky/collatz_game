/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, June 2023
*/
#pragma once

#include "__uint512_t.h"

#include <vector>

using namespace std;

typedef __uint128_t _bigint;

_bigint y;
_bigint x0;
vector< vector<_bigint> > x23;
vector< vector< vector<_bigint> > > newlines;

void initialize_XY(__uint16_t J, __uint16_t K) {
	_bigint temp;
	_bigint y3 = 1;
	for (__uint16_t k = 0; k < K; ++k) {
		temp = 0;
		temp += y3;
		temp += y3;
		y3 += temp;
	}

	y = 1;
	for (__uint16_t j = 0; j < J+K; ++j) {
		y += y;
	}
	if (y >= y3) {
		y -= y3;
	} else {
		y3 -= y;
		y = y3;
	}

	x23.resize(J+K-1);
	for (__uint16_t j = 0; j < J+K-1; ++j) {
		x23[j].resize(K);
		if (j > 0) {
			x23[j][0] = 0;
			x23[j][0] += x23[j-1][0];
			x23[j][0] += x23[j-1][0];
			while (x23[j][0] >= y) {
				x23[j][0] -= y;
			}
		} else {
			x23[j][0] = 1;
		}
		for (__uint16_t k = 1; k < K; ++k) {
			x23[j][k] = 0;
			x23[j][k] += x23[j][k-1];
			x23[j][k] += x23[j][k-1];
			x23[j][k] += x23[j][k-1];
			while (x23[j][k] >= y) {
				x23[j][k] -= y;
			}
		}
	}

#if defined(VERBOSE_LOGS)
	print_matrix(x23, "2^j*3^k");
#endif

	x0 = 0;
	x0 += y;
	x0 += x23[K+J-2][0];
	x0 += x23[K+J-2][0];
	x0 -= x23[K-1][0];
	while (x0 >= y) {
		x0 -= y;
	}
#if defined(VERBOSE_LOGS)
	cout << " x= " << x0 << " y= " << y << endl;
#endif
}

void initialize_newlines(__uint16_t J, __uint16_t K, __uint16_t J0) {
	newlines.resize(K-1);
	for (__uint16_t K0 = 1; K0 < K; ++K0) {
		vector< vector<_bigint> >& newline = newlines[K0-1];
		newline.resize(J);
		newline[0].resize(K);
		for (__uint16_t j = 1; j < J; ++j) {
			newline[j].resize(K);
			for (__uint16_t k = 1; k < K; ++k) {
				newline[j][k] = 0;
				if (k+K0 < K) {
					newline[j][k] += newline[j-1][k+K0];
				}
				for (__uint16_t dk = 0; dk < K0 && dk + k < K; ++dk) {
					newline[j][k] += y;
					newline[j][k] += x23[J0+K-k-dk-1+j][k+dk-1];
					newline[j][k] -= x23[J0+K-k-dk-1][k+dk-1];
					while (newline[j][k] >= y) {
						newline[j][k] -= y;
					}
				}
			}
		}

#if defined(VERBOSE_LOGS)
		print_matrix(newline, "newline intermadiate");
#endif

		for (__uint16_t j = 1; j < J; ++j) {
			for (__uint16_t k = 1; k < K; ++k) {
				_bigint temp = newline[j][k];
				newline[j][k] = 0;
				newline[j][k] += y;
				newline[j][k] += y;
				newline[j][k] += x23[J0+K-k+j][k-1];
				newline[j][k] -= x23[J0+K-k-1][k-1];
				newline[j][k] -= temp;
				while (newline[j][k] >= y) {
					newline[j][k] -= y;
				}
			}
		}

#if defined(VERBOSE_LOGS)
		print_matrix(newline, "newline final");
#endif
	}
}
