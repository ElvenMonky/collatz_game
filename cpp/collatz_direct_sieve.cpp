/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, February 2024
*/

/* Usage:
* clang++ cpp/collatz_direct_sieve.cpp -Ofast -o collatz_direct_sieve -std=c++2b
* ./collatz_direct_sieve
*/

typedef __uint128_t _bigint;

#include <bit>
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

constexpr _bigint MAX = std::numeric_limits<_bigint>::max();
constexpr long double three = 3;
const long double log23 = log2(three);

constexpr uint16_t M = 40; // sieve depth
constexpr uint64_t S = 1ULL<<(M-2);
uint64_t R = 0; // number of reminders
vector<bool> sieve;
mutex rr_mutex;

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

void binary_write(ofstream& fout, const vector<bool>& x)
{
    vector<bool>::size_type n = x.size();
    fout.write((const char*)&n, sizeof(vector<bool>::size_type));
	cout << n;
    for(vector<bool>::size_type i = 0; i < n;)
    {
        unsigned char aggr = 0;
        for(unsigned char mask = 1; mask > 0 && i < n; ++i, mask <<= 1)
            if(x[i])
                aggr |= mask;
		// cout << " " >> aggr;
        fout.put((char &)aggr);
    }
	cout << endl;
}

void binary_read(ifstream& fin, vector<bool>& x)
{
    vector<bool>::size_type n = 0;
    fin.read((char*)&n, sizeof(vector<bool>::size_type));
    x.resize(n);
	cout << n;
    for(vector<bool>::size_type i = 0; i < n;)
    {
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

	sieve.resize(S);

	std::for_each(std::execution::par, range.begin(), range.end(), [&](uint16_t& t) {
		for (uint64_t k = t; k < S; k+=T) {
			uint64_t x = 4*k+3;
			int c = 0;
			int m = 0;
			for (; m < M; ++m) {
				if (log23*c < m) break;
				if (x&1) {
					++c;
					x += (x<<1)+1;
				}
				x >>= 1;
			}
			if (log23*c > m) {
				rr_mutex.lock();
				++R;
				sieve[k] = 1;
				rr_mutex.unlock();
			}
		}
	});

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
	str << "\t total of " << R << " reminders found at depth " << (uint32_t)M << endl;
	cout << str.str();

	/*cout << sieve.size();
	for (uint64_t k = 0; k < S; ++k) {
		if (sieve[k]) {
				cout << " " << 4*k+3;
		}
	}
	cout << endl;*/

	ofstream fout("sieve.dat", ios::binary);
	binary_write(fout, sieve);
	fout.close();

	ifstream fin("sieve.dat", ios::binary);
	binary_read(fin, sieve);
	fin.close();

	/*cout << sieve.size();
	for (uint64_t k = 0; k < S; ++k) {
		if (sieve[k]) {
				cout << " " << 4*k+3;
		}
	}
	cout << endl;*/
}
