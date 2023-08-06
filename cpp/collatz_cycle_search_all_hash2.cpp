/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, July 2023
*/

/* Usage:
* clang++ cpp/collatz_cycle_search_all_hash2.cpp -Ofast -o collatz_cycle_search -std=c++2b
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

// g++ on linux does not have hash for __uint128_t
/*
namespace std {
	template<>
	struct hash<__uint128_t> {
		size_t operator()(__uint128_t var) const {
			std::hash<uint64_t> hasher = std::hash<uint64_t>{};
			size_t seed = hasher((uint64_t)var);
			seed ^= hasher((uint64_t)(var >> 64)) + 0x9e3779b9 + (seed<<6) + (seed>>2);
			return seed;
		}
	};

	template<>
	struct hash<__int128_t> {
		size_t operator()(__int128_t var) const {
			std::hash<uint64_t> hasher = std::hash<uint64_t>{};
			size_t seed = hasher((uint64_t)var);
			seed ^= hasher((uint64_t)(var >> 64)) + 0x9e3779b9 + (seed<<6) + (seed>>2);
			return seed;
		}
	};
}
*/

#include "unordered_dense.h"

using namespace std;

time_t start_time = time(0);

constexpr __uint16_t M=80;
__int128_t p2[M+1];
__int128_t p3[M+1];
__int128_t dx[M+1];
__int128_t yy[M+1];
__uint16_t m = 56;
__uint16_t m1 = 30;
__uint16_t T = 11;

ankerl::unordered_dense::map<__uint64_t, __uint64_t> reminderMap[M+1];
std::mutex reminderMap_mutex[M+1];

int main () {
	// powers of 2 and 3
	p2[0] = 1;
	p3[0] = 1;
	for (__uint16_t m = 1; m < M+1; ++m) {
		p2[m] = 2*p2[m-1];
		p3[m] = 3*p3[m-1];
	}
	std::vector<__int128_t> dest;
	// dest.assign(p2, p2 + M + 1);
	// print_vector(dest);
	// dest.assign(p3, p3 + M + 1);
	// print_vector(dest);

	// 01 -> 10, 011 -> 100, 0111 -> 1000, 01111 -> 10000, ...
	for (__uint16_t m = 0; m < M+1; ++m) {
		dx[m] = p2[m];
		for (__uint16_t i=0; i<m; ++i) {
			dx[m] -= p2[i]*p3[m-i-1];
		}
		// cout << dx[m] << endl;
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

	// 0 -> 0, 1 -> 1, 10 -> 2, 11 -> 5, 100 -> 4, 101 -> 7, 110 -> 10, 111 -> 19, 1000 -> 8, 1001 -> 11, 1010 -> 14, 1011 -> 23, 1100 -> 20, ...
	std::for_each(std::execution::par, range.begin(), range.end(), [&](__uint64_t& t) {
		__uint16_t m0 = m1-1-T;
		__int16_t l1 = 0;
		__uint64_t x = 0;
		__uint64_t s = p2[m1-1]+t*p2[m0];
		__uint128_t e = s+p2[m0];
		for (__uint16_t i=m1; i>0; --i) {
			__uint16_t d = ((s-1)>>(i-1)) & 1;
			x += p2[i-1]*p3[l1]*d;
			l1 += d;
		}
		for (; s < e; ++s) {
			__uint16_t d = std::countr_zero(s);
			l1 -= d;
			x += dx[d]*p3[l1++];
			// stringstream str;
			// double seconds_since_start = difftime(time(0), start_time);
			// str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			// str << "\t in map loop: l1 x s " << l1 << " " << x << " " << (__int128_t)s << endl;
			// cout << str.str();
			reminderMap_mutex[l1].lock();
			reminderMap[l1][x] = s;
			reminderMap_mutex[l1].unlock();
		}
	});

	while (1) {
		++m;
		cout << m+1 << endl;
		for (__uint16_t l=0; l<=m; ++l) {
			yy[l] = p2[m+1]-p3[l];
			if (yy[l] < 0)
				yy[l] = -yy[l];
		}

		std::for_each(std::execution::par, range.begin(), range.end(), [&](__uint64_t& t) {
			__uint16_t m0 = m-m1-T;
			__uint16_t l2 = 0;
			__int128_t x = 0;
			__uint64_t s = t*p2[m0];
			__uint64_t e = s+p2[m0];
			for (__uint16_t i=m-m1; i>0; --i) {
				__uint16_t d = ((s-1)>>(i-1)) & 1;
				x += p2[i-1]*p3[l2]*d;
				l2 += d;
			}
			if (t == 0) {
				x -= p2[m-m1];
			}
			/*
			stringstream str;
			double seconds_since_start = difftime(time(0), start_time);
			str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			str << "\t" << (m+1) << " " << l2 << " " << t << " " << x << endl;
			cout << str.str();
			*/
			__uint16_t d = std::countr_zero((__uint64_t)(s+p2[m-m1]));
			for (; s < e; ++s, d = std::countr_zero(s)) {
				l2 -= d;
				x += dx[d] * p3[l2];
				l2 += (s > 0);
				for (__uint16_t l1=1; l1 <= m1; ++l1) {
					__int128_t& y = yy[l1+l2];
					__uint128_t z = (x * p3[l1]) % y;
					z = (z > 0)*(y - z);

					// n*y = z * 2^(m-m1) + x * 3^l1
					// z * 2^(m-m1) = n * y - x * 3^l1
					// z * 2^(m-m1) = (n - p) * y - (x * 3^l1)%y
					// q = (x * 3^l1)%y
					// 0 <= ((n - p) * y - q) / 2^(m-m1) = z < y
					for (__uint16_t m2 = m1; m2 < m; ++m2) {
						z += (z & 1) * y;
						z >>= 1;
					}
					/*
					stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\t in loop: l1 l2 x y z s " << l1 << " " << l2 << " " << x << " " << (__uint128_t)y << " " << z << " " << (__int128_t)s << endl;
					cout << str.str();
					*/
					if (reminderMap[l1].find(z) != reminderMap[l1].end()) {
						__uint128_t ss = (reminderMap[l1][z] << (m-m1)) + s;
						__uint128_t xx = 0;
						__uint16_t l = 0;
						for (__uint16_t i=m; i>0; --i) {
							__uint16_t d = (ss>>(i-1)) & 1;
							xx += p2[i-1]*p3[l]*d;
							l += d;
						}
						std::string sign = p2[m+1]-p3[l] < 0 ? "-" : "";
						stringstream str;
						double seconds_since_start = difftime(time(0), start_time);
						str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
						str << "\tm=" << (m+1) << ",\tl=" << l << ",\tn=" << sign << xx/y << ",\ty=" << sign << (__uint128_t)y << ",\tr=" << xx%y << ",\ts=" << (__int128_t)ss << '0' << endl;
						cout << str.str();
					}
				}
			}
		});
	}
}
