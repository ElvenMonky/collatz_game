/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, February 2024
*/

/* Usage:
* clang++ cpp/collatz_direct_check_sieve.cpp -Ofast -o collatz_direct_check_sieve -std=c++2b
* ./collatz_direct_check_sieve
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

constexpr uint16_t T = 10; // CPU threads available

constexpr _bigint MAX = std::numeric_limits<_bigint>::max();

constexpr uint16_t M = 26; // reminders depth
constexpr uint64_t S = 1ULL<<M;
constexpr uint64_t mask = S-1;
uint64_t a[S];
uint64_t b[S];
uint64_t R = 0; // reminders per thread
vector<uint64_t> rr;

inline int clz_u128(__uint128_t u) {
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
	for (uint64_t k = 0; k <= mask; ++k) {
		uint64_t x = k;
		uint64_t c = 1;
		for (uint16_t m = 0; m < M; ++m) {
			c *= 1 + 2*(x&1);
			x += x&1 ? (x<<1)+1 : 0;
			x >>= 1;
		}
		a[k] = c;
		b[k] = x;
		if (c > mask) {
			rr.push_back(k);
			/*stringstream str;
			double seconds_since_start = difftime(time(0), start_time);
			str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			str << "\t next seed " << R << " " << rr[R] << endl;
			cout << str.str();*/
			++R;
		}
		/*stringstream str;
		double seconds_since_start = difftime(time(0), start_time);
		str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
		str << "\t precalculation " << r << " " << a[r] << " " << b[r] << endl;
		cout << str.str();*/
	}

	// enables parallel computations
	vector<uint16_t> range;
	range.resize(T);
	for (uint16_t t = 0; t < T; ++t) {
		range[t] = t;
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
	str << "\t start " << T << " threads " << R << " reminders " << ((R-1)/T+1) << " per thread" << endl;
	cout << str.str();

	// spread reminders by threads
	uint64_t r = R;
	R = (R-1)/T+1;
	rr.resize(R*T);
	for (; r < R*T; ++r) {
		rr[r] = rr[0];
	}

	std::for_each(std::execution::par, range.begin(), range.end(), [&](uint16_t& t) {
		_bigint n = 0;
		_bigint x, y;
		uint64_t *rrr = &rr[0] + t*R;
		for(_bigint i=0; i<MAX; ++i) {
			for (uint64_t r = 0; r < R; ++r) {
				y = n + rrr[r];
				x = y;
				while (x >= y) {
					uint64_t k = x & mask;
					x = a[k]*(x>>M) + b[k];
					if (x == y) {
						stringstream str;
						double seconds_since_start = difftime(time(0), start_time);
						str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
						str << "\t cycle found! " << y << " " >> y << " " << clz_u128(y) << endl;
						cout << str.str();
						return;
					}
				}
			}

			if (!(i&0xFFF)) {
				stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\t processed so far " << n << " " >> n << " " << clz_u128(n) << endl;
				cout << str.str();
			}

			n += S;
		}
	});
}
