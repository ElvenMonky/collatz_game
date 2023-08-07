/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, July 2023
*/

/* Usage:
* clang++ cpp/collatz_cycle_search_all2.cpp -Ofast -o collatz_cycle_search -std=c++2b
* ./collatz_cycle_search
*/

#include "__uint256_t.h"

#include <bit>
//#include <execution>
#include <iostream>
#include <sstream>
#include <thread>
#include <time.h>
#include <vector>

/* If running on Mac, uncomment following lines and use `pstld.h` from https://github.com/mikekazakov/pstld (MIT License) by Michael G. Kazakov.
* This is because clang under Mac does not support `std::execution::par` even with `-std=c++2b`
*/
#define PSTLD_HEADER_ONLY   // no prebuilt library, only the header
#define PSTLD_HACK_INTO_STD // export into namespace std
#include "pstld.h"

#include "unordered_dense.h"

using namespace std;

time_t start_time = time(0);

typedef __uint256_t _bigint;

constexpr __uint16_t M2=256;
constexpr __uint16_t M3=162;
__uint16_t m = 1;
__uint16_t T = 11;

_bigint p23[M2][M3];
_bigint dx[M3];
_bigint yy[M3];
_bigint ymin;

int main () {
	std::vector<_bigint> dest;
	// powers of 2 and 3
	p23[0][0] = 1;
	for (__uint16_t m2 = 1; m2 < M2; ++m2) {
		p23[m2][0] = 2 * p23[m2-1][0];
	}
	for (__uint16_t m2 = 0; m2 < M3; ++m2) {
		for (__uint16_t m3 = 1; m3 < M3; ++m3) {
			p23[m2][m3] = 3 * p23[m2][m3-1];
		}
		// dest.assign(p23[m2], p23[m2] + M3);
		// print_vector(dest);
	}

	// 01 -> 10, 011 -> 100, 0111 -> 1000, 01111 -> 10000, ...
	for (__uint16_t m3 = 0; m3 < M3; ++m3) {
		dx[m3] = p23[0][m3];
		dx[m3] -= p23[m3][0];
	}
	// dest.assign(dx, dx + M3);
	// print_vector(dest);

	// enables parallel computations
	vector<__uint64_t> range;
	range.resize(p23[T][0]);
	for (__uint64_t t = 0; t < p23[T][0]; ++t) {
		range[t] = t;
	}
	// print_vector(range);

	while (1) {
		ymin = p23[m][0];
		for (__uint16_t l=0; l<=m; ++l) {
			if (p23[m][0] >= p23[0][l]) {
				yy[l] = p23[m][0];
				yy[l] -= p23[0][l];
			} else {
				yy[l] = p23[0][l];
				yy[l] -= p23[m][0];
			}
			if (ymin >= yy[l])
				ymin = yy[l];
		}
		// dest.assign(yy, yy + m);
		// print_vector(dest);

		stringstream str;
		double seconds_since_start = difftime(time(0), start_time);
		str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
		str << "\t m ymin " << m << " " << ymin << endl;
		cout << str.str();

		for (__uint16_t l=1; l < m; ++l) {
			_bigint& y = yy[l];

			// 3^m1 - 2^m1 < 2^m - 3^l
			__uint16_t m1;
			for (m1 = 1; y >= dx[m1+1]; ++m1);
			__uint16_t m2 = m - m1 - 1;

			stringstream str;
			double seconds_since_start = difftime(time(0), start_time);
			str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			str << "\t l m1 m2 y " << l << " " << m1 << " " << m2 << " " << y << endl;
			cout << str.str();

			std::for_each(std::execution::par, range.begin(), range.end(), [&](__uint64_t& t) {
				__uint16_t m0 = (m2-T)*(m2>T);
				if (t >= (__uint128_t)p23[m2-m0][0]) return;
				__uint16_t l2 = 0;
				_bigint x = 0;
				__uint64_t s = t*(__uint128_t)p23[m0][0];
				__uint64_t e = s+(__uint128_t)p23[m0][0];
				for (__uint16_t i=m2; i>0; --i) {
					bool d = ((s-1)>>(i-1)) & 1;
					x += d*p23[i-1][l2];
					l2 += d;
				}
				if (t == 0) {
					x -= p23[m2][0];
				}
				/*stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\t" << m2 << " " << l2 << " " << t << " " << x << endl;
				cout << str.str();*/
				__uint16_t d = std::countr_zero(s+(__uint64_t)p23[m2][0]);
				for (; s < e; ++s, d = std::countr_zero(s)) {
					l2 -= d;
					x += p23[d+1][l2];
					x -= p23[0][d+l2];
					l2 += (s > 0);
					if (l > m1 + l2 || l <= l2)
						continue;
					__uint16_t l1 = l - l2;
					_bigint q = (__uint128_t)p23[0][l1] * x;
					q %= y;
					_bigint z = y;
					z -= q;

					/*stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\t" << m2 << " " << l1 << " " << l2 << " " << d << " " >> (s+(__uint64_t)p23[m2][0]) << " " << x << " " << q << " " << z << endl;
					cout << str.str();*/

					// n*y = z * 2^m2 + x * 3^l1
					// z * 2^m2 = n * y - x * 3^l1
					// z * 2^m2 = (n - p) * y - (x * 3^l1)%y
					// q = (x * 3^l1)%y
					// 0 <= ((n - p) * y - q) / 2^m2 = z < y
					for (__uint16_t m2 = m1+1; m2 < m; ++m2) {
						bool d = z & 1;
						z += d * y;
						z >>= 1;
					}
					q = z;

					/*stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\t in loop: l1 l2 x y z s " << l1 << " " << l2 << " " << x << " " << y << " " << z << " " >> (s+(__uint64_t)p23[m2][0]) << endl;
					cout << str.str();*/

					__uint16_t k = 0;
					__int16_t ll = l1;
					for (; k < m1 && ll > 0 && z > 0; ++k) {
						bool d = z & 1;
						ll -= d * (ll > 0);
						z -= d * p23[0][ll];
						z >>= 1;
					}
					if (z == 0 && ll == 0 && k == m1) {
						__uint16_t k = 0;
						__int16_t ll = l1;
						_bigint ss = s;
						for (; k < m1 && ll > 0 && q > 0; ++k) {
							bool d = q & 1;
							ll -= d * (ll > 0);
							ss += d * p23[m2 + k][0];
							q -= d * p23[0][ll];
							q >>= 1;
						}
						_bigint xx = 0;
						__uint16_t l = 0;
						for (__uint16_t i=m; i>0; --i) {
							bool d = (ss>>(i-1)) & 1;
							xx += d*p23[i-1][l];
							l += d;
						}
						_bigint r = xx;
						r %= y;
						std::string sign = p23[m][0] >= p23[0][l] ? "" : "-";
						stringstream str;
						double seconds_since_start = difftime(time(0), start_time);
						str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
						str << "\tm=" << m << ",\tl=" << l << ",\ts=" >> ss << '0' << ",\tr=" << r << ",\tn=" << sign << (__uint128_t)xx/(__uint128_t)y << ",\ty=" << sign << y << endl;
						cout << str.str();
					}
				}
			});
		}
		++m;
	}
}
