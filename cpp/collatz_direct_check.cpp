/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, February 2024
*/

/* Usage:
* clang++ cpp/collatz_direct_check.cpp -Ofast -o collatz_direct_check -std=c++2b
* ./collatz_direct_check
*/

typedef __uint128_t _bigint;

#include <bit>
//#include <execution>
#include <fstream>
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

using namespace std;

time_t start_time = time(0);

constexpr __uint16_t T = 20;
constexpr _bigint MAX = std::numeric_limits<_bigint>::max();

inline int clz_u128(__uint128_t u) {
  __uint64_t hi = u>>64;
  __uint64_t lo = u;
  int retval[3]={
    __countl_zero(hi),
    __countl_zero(lo)+64,
    128
  };
  int idx = !hi + ((!lo)&(!hi));
  return 128-retval[idx];
}

std::ostream& operator>>( std::ostream& dest, __uint128_t value )
{
	__uint8_t base = 2;
	std::ostream::sentry s( dest );
	if ( s ) {
		__uint128_t tmp = value;
		char buffer[ 128 ];
		char* d = std::end( buffer );
		__uint8_t i = 0;
		do
		{
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

std::ostream& operator<<( std::ostream& dest, __uint128_t value )
{
	__uint8_t base = 10;
	std::ostream::sentry s( dest );
	if ( s ) {
		__uint128_t tmp = value;
		char buffer[ 128 ];
		char* d = std::end( buffer );
		__uint8_t i = 0;
		do
		{
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

int main () {
	// enables parallel computations
	vector<__uint16_t> range;
	range.resize(T>>1);
	for (__uint16_t t = 0; t < T>>1; ++t) {
		range[t] = 2*t+3;
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
	str << "\t start " << endl;
	cout << str.str();

	std::for_each(std::execution::par, range.begin(), range.end(), [&](__uint16_t& t) {
		_bigint n = t;
		_bigint x;
		for(_bigint i=0; i<MAX; ++i) {
			x = n;
			while (x >= n) {
				x += x&1 ? (x<<1)+1 : 0;
				x >>= 1;
				if (x == n) {
					stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\t cycle found! " << x << " " >> x << " " << clz_u128(x) << endl;
					cout << str.str();
					return;
				}
			}

			if (!(i&0xFFFFFFFF)) {
				stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\t processed so far " << n << " " >> n << " " << clz_u128(n) << endl;
				cout << str.str();
			}

			n += T;
		}
	});
}

// 16n+0 => 8n+0 => 4n+0 => 2n+0 => n+0
// 16n+1 => 24n+2 => 12n+1 => 18n+2 => 9n+1
// 16n+2 => 8n+1 => 12n+2 => 6n+1 => 9n+2
// 16n+3 => 24n+5 => 36n+8 => 18n+4 => 9n+2
// 16n+4 => 8n+2 => 4n+1 => 6n+2 => 3n+1
// 16n+5 => 24n+8 => 12n+4 => 6n+2 => 3n+1
// 16n+6 => 8n+3 => 12n+5 => 18n+8 => 9n+4
// 16n+7 => 24n+11 => 36n+17 => 54n+26 => 27n+13
// 16n+8 => 8n+4 => 4n+2 => 2n+1 => 3n+2
// 16n+9 => 24n+14 => 12n+7 => 18n+11 => 27n+17
// 16n+10 => 8n+5 => 12n+8 => 6n+4 => 3n+2
// 16n+11 => 24n+17 => 36n+26 => 18n+13 => 27n+20
// 16n+12 => 8n+6 => 4n+3 => 6n+5 => 9n+8
// 16n+13 => 24n+20 => 12n+10 => 6n+5 => 9n+8
// 16n+14 => 8n+7 => 12n+11 => 18n+17 => 27n+26
// 16n+15 => 24n+23 => 36n+35 => 54n+53 => 81n+80
