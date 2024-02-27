/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, February 2024
*/

/* Usage:
* clang++ cpp/collatz_direct_glide.cpp -Ofast -o collatz_direct_glide -std=c++2b
* ./collatz_direct_glide
*/

typedef __uint128_t _bigint;

#include <bit>
#include <cmath>
//#include <execution>
#include <fstream>
#include <iostream>
#include <mutex>
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

using namespace std;

time_t start_time = time(0);

constexpr uint16_t T = 10; // CPU threads available
_bigint minx[T];
_bigint minx_global = 0;

constexpr uint16_t MAXP3 = 83;
_bigint pow3[MAXP3];

constexpr long double three = 3;
const long double log23 = log2(three);

constexpr int MMAX = 1000000;

constexpr uint16_t M = 40; // sieve depth
constexpr uint64_t S = 1ULL<<(M-2);
constexpr uint64_t mask = S-1;
vector<bool> sieve;

mutex rr_mutex;
vector<pair<_bigint, int>> records;

inline int clz_u128(const __uint128_t u) {
  uint64_t hi = u>>64;
  uint64_t lo = u;
  int retval[3]={
    __countl_zero(hi),
    __countl_zero(lo)+64,
    128
  };
  int idx = !hi + ((!lo)&(!hi));
  return 128-retval[idx];
}

inline int crz_u128(const __uint128_t u) {
	return (uint64_t)u ? countr_zero((uint64_t)u) : (64 + countr_zero((uint64_t)(u >> 64)));
}

std::ostream& operator>>( std::ostream& dest, __uint128_t value ) {
	__uint8_t base = 2;
	std::ostream::sentry s( dest );
	if ( s ) {
		__uint128_t tmp = value;
		char buffer[ 128 ];
		char* d = std::end( buffer );
		__uint8_t i = 0;
		do {
			-- d;
			*d = "0123456789ABCDEF"[ tmp % base ];
			tmp /= base;
			++ i;
		} while ( tmp != 0 );
		int len = std::end( buffer ) - d;
		if ( dest.rdbuf()->sputn( d, len ) != len ) {
			dest.setstate( std::ios_base::badbit );
		}
	}
	return dest;
}

std::ostream& operator<<( std::ostream& dest, __uint128_t value ) {
	__uint8_t base = 10;
	std::ostream::sentry s( dest );
	if ( s ) {
		__uint128_t tmp = value;
		char buffer[ 128 ];
		char* d = std::end( buffer );
		__uint8_t i = 0;
		do {
			-- d;
			*d = "0123456789ABCDEF"[ tmp % base ];
			tmp /= base;
			++ i;
		} while ( tmp != 0 );
		int len = std::end( buffer ) - d;
		if ( dest.rdbuf()->sputn( d, len ) != len ) {
			dest.setstate( std::ios_base::badbit );
		}
	}
	return dest;
}

void binary_read(ifstream& fin, vector<bool>& x) {
    vector<bool>::size_type n = 0;
    fin.read((char*)&n, sizeof(vector<bool>::size_type));
    x.resize(n);
	cout << n;
    for(vector<bool>::size_type i = 0; i < n;) {
        unsigned char aggr = 0;
        fin.get((char &)aggr);
		// cout << " " >> aggr;
        for(unsigned char mask = 1; mask > 0 && i < n; ++i, mask <<= 1)
            x[i] = aggr & mask;
    }
	cout << endl;
}

int main () {
	// enables parallel computations
	vector<uint16_t> range;
	range.resize(T);
	for (uint16_t t = 0; t < T; ++t) {
		range[t] = t;
	}

	ifstream fin("sieve.dat", ios::binary);
	binary_read(fin, sieve);
	fin.close();

	pow3[0] = 1;
	for (uint16_t t = 1; t < MAXP3; ++t) {
		pow3[t] = 3*pow3[t-1];
	}

	std::for_each(std::execution::par, range.begin(), range.end(), [&](uint16_t& t) {
		int mmax = 58;
		for (_bigint k = t;; k+=T) {
			if (!sieve[k&mask]) {
				continue;
			}
			_bigint x = (k<<2)|3;
			int c = 0;
			int m = 0;
			do {
				if (c > MMAX) {
					_bigint z = 4*k+3;
					stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << t << " " << std::this_thread::get_id() << ":";
					str << "\t candidate\t " << m << " " << c << "\t " << z << " " >> z << " " << x << endl;
					cout << str.str();
				}
				++x;
				int a = crz_u128(x);
				x >>= a;
				x *= pow3[a];
				--x;
				int b = crz_u128(x);
				x >>= b;
				c += a;
				m += a+b;
			} while (log23*c > m);

			if (m > mmax) {
				_bigint y = x;
				int c2 = c;
				int m2 = m;
				while (log23*c < m-1) {
					--m;
					x <<= 1;
				}
				if (m <= mmax) {
					continue;
				}
				mmax = m;
				_bigint z = 4*k+3;
				rr_mutex.lock();
				if (minx[t] <= minx_global) {
					minx_global = z;
					for (uint16_t tt=0; tt<T; ++tt) {
						if (minx_global > minx[tt] && tt != t) {
							minx_global = minx[tt];
						}
					}
					if (minx_global > 0) {
						stringstream str;
						double seconds_since_start = difftime(time(0), start_time);
						str << seconds_since_start << "s\t" << t << " " << std::this_thread::get_id() << ":";
						str << "\t current progress: checked all numbers up to \t" << minx_global << endl;
						cout << str.str();
					}
				}
				minx[t] = z;
				auto it = records.begin();
				bool found = false;
				while (it != records.end()) {
					if (z < it->first && m >= it->second) {
						it = records.erase(it);
					} else {
						if (z > it->first && m <= it->second) {
							found = true;
						}
						++it;
					}
				}
				if (!found) {
					do {
						++y;
						int a = crz_u128(y);
						y >>= a;
						y *= pow3[a];
						--y;
						int b = crz_u128(y);
						y >>= b;
						c2 += a;
						m2 += a+b;
					} while (y > 1);
					records.emplace_back(z, m);
					sort(records.begin(), records.end());
					stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << t << " " << std::this_thread::get_id() << ":";
					str << "\t glide\t" << m << " " << c << "\t" << m2 << " " << c2 << "\t" << z << " " >> z << "\t";
					if (x > z) {
						str << "!! ";
					}
					str << x << endl;
					cout << str.str();
				}
				rr_mutex.unlock();
			}
		}
	});

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
	str << "\t total of " << records.size() << " possible glide records found" << endl;
	for (auto r: records) {
		str << r.first << " " << r.second << endl;
	}
	cout << str.str();
}
