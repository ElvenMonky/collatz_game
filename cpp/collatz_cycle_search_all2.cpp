/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, July 2023
*/

/* Usage:
* clang++ cpp/collatz_cycle_search_all2.cpp -Ofast -o collatz_cycle_search -std=c++2b
* ./collatz_cycle_search
*/

#include "__uint512_t.h"

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

constexpr __uint16_t M=127;
__uint16_t m = 80;
__uint16_t m1;
__uint16_t m2;
__uint16_t T = 11;

__int128_t p2[M+1];
__int128_t p3[M+1];
__int128_t dx[M+1];
__int128_t yy[M+1];
__int128_t ymin;

int main () {
	// powers of 2 and 3
	p2[0] = 1;
	p3[0] = 1;
	for (__uint16_t m = 1; m < M+1; ++m) {
		p2[m] = 2 * p2[m-1];
		p3[m] = 3 * p3[m-1];
	}
	// std::vector<__int128_t> dest;
	// dest.assign(p2, p2 + M + 1);
	// print_vector(dest);
	// dest.assign(p3, p3 + M + 1);
	// print_vector(dest);

	// 01 -> 10, 011 -> 100, 0111 -> 1000, 01111 -> 10000, ...
	for (__uint16_t m = 0; m < M+1; ++m) {
		dx[m] = p2[m+1] - p3[m];
	}
	// dest.assign(dx, dx + M + 1);
	// print_vector(dest);

	// enables parallel computations
	vector<__uint64_t> range;
	range.resize(p2[T]);
	for (__uint64_t t = 0; t < p2[T]; ++t) {
		range[t] = t;
	}
	// print_vector(range);

	while (1) {
		++m;
		ymin = p2[m];
		for (__uint16_t l=0; l<=m; ++l) {
			yy[l] = p2[m]-p3[l];
			if (yy[l] < 0)
				yy[l] = -yy[l];
			if (ymin > yy[l])
				ymin = yy[l];
		}

		// 3^m1 - 2^m1 < 2^m - 3^l
		for (m1 = 1; p3[m1+1] - p2[m1+1] < ymin; ++m1);
		m2 = m - m1 - 1;

		stringstream str;
		double seconds_since_start = difftime(time(0), start_time);
		str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
		str << "\t m m1 m2 ymin " << m << " " << m1 << " " << m2 << " " << ymin << endl;
		cout << str.str();

		std::for_each(std::execution::par, range.begin(), range.end(), [&](__uint64_t& t) {
			__uint16_t m0 = m2-T;
			__uint16_t l2 = 0;
			__int128_t x = 0;
			__uint64_t s = t*p2[m0];
			__uint64_t e = s+p2[m0];
			for (__uint16_t i=m2; i>0; --i) {
				__uint16_t d = ((s-1)>>(i-1)) & 1;
				x += p2[i-1]*p3[l2]*d;
				l2 += d;
			}
			if (t == 0) {
				x -= p2[m2];
			}
			/*stringstream str;
			double seconds_since_start = difftime(time(0), start_time);
			str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			str << "\t" << m2 << " " << l2 << " " << t << " " << x << endl;
			cout << str.str();*/
			__uint16_t d = std::countr_zero((__uint64_t)(s+p2[m2]));
			for (; s < e; ++s, d = std::countr_zero(s)) {
				l2 -= d;
				x += dx[d] * p3[l2];
				l2 += (s > 0);
				/*stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\t" << m2 << " " << l2 << " " << d << " " << (__uint128_t)(s+p2[m2]) << " " << x << endl;
				cout << str.str();*/
				for (__uint16_t l1=1; l1 <= m1; ++l1) {
					__int128_t& y = yy[l1+l2];
					__int128_t z = (x * p3[l1]) % y;
					z = (y - z);

					// n*y = z * 2^m2 + x * 3^l1
					// z * 2^m2 = n * y - x * 3^l1
					// z * 2^m2 = (n - p) * y - (x * 3^l1)%y
					// q = (x * 3^l1)%y
					// 0 <= ((n - p) * y - q) / 2^m2 = z < y
					for (__uint16_t m2 = m1+1; m2 < m; ++m2) {
						z += (z & 1) * y;
						z >>= 1;
					}

					/*stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\t in loop: l1 l2 x y z s " << l1 << " " << l2 << " " << x << " " << y << " " << z << " " << (__uint128_t)s << endl;
					cout << str.str();*/

					__uint16_t k = 0;
					__int16_t l = l1;
					__uint128_t ss = s;
					for (; k < m1 && l > 0 && z > 0; ++k) {
						l -= (z & 1) * (l > 0);
						ss += (z & 1) * p2[m2 + k];
						z -= (z & 1) * p3[l];
						z >>= 1;
					}
					if (z == 0 && l == 0 && k == m1) {
						__uint128_t xx = 0;
						__uint16_t l = 0;
						for (__uint16_t i=m; i>0; --i) {
							__uint16_t d = (ss>>(i-1)) & 1;
							xx += p2[i-1]*p3[l]*d;
							l += d;
						}
						std::string sign = p2[m] - p3[l] < 0 ? "-" : "";
						stringstream str;
						double seconds_since_start = difftime(time(0), start_time);
						str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
						str << "\tm=" << m << ",\tl=" << l << ",\tn=" << sign << (__int128_t)xx/y << ",\ty=" << sign << y << ",\tr=" << xx%y << ",\ts=" << ss << '0' << endl;
						cout << str.str();
					}
				}
			}
		});
	}
}
