/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, August 2023
*/
#pragma once

#include <iostream>
#include <vector>
#include <string>
#include <sstream>

using namespace std;

class __uint256_t {
	public:
	__uint128_t _[2];

	__uint256_t() {
	}

	__uint256_t(const __uint128_t& i) {
		_[0] = i;
		_[1] = 0;
	}

	void operator=(const __uint128_t& i) {
		_[0] = i;
		_[1] = 0;
	}

	__uint256_t(const __uint256_t& i) {
		_[0] = i._[0];
		_[1] = i._[1];
	}

	void operator=(const __uint256_t& i) {
		_[0] = i._[0];
		_[1] = i._[1];
	}

	operator __uint128_t() {
        return _[0];
    }

	__uint16_t bit() const {
		__uint16_t i = 1 - (_[1] == 0);
		__uint16_t j = 64 * ((_[i] >> 64) > 0);
		j += 32 * ((_[i] >> (32 + j)) > 0);
		j += 16 * ((_[i] >> (16 + j)) > 0);
		j += 8 * ((_[i] >> (8 + j)) > 0);
		j += 4 * ((_[i] >> (4 + j)) > 0);
		j += 2 * ((_[i] >> (2 + j)) > 0);
		j += ((_[i] >> (1 + j)) > 0);
		return (i << 7) + j;
	}

	friend pair<__uint256_t,__uint256_t> divmod(const __uint256_t& a, const __uint256_t& b);
};

__uint256_t& operator+=(__uint256_t& a, const __uint256_t& b) {
	a._[0] += b._[0];
	a._[1] += b._[1] + (a._[0] < b._[0]);
	return a;
}

__uint256_t& operator-=(__uint256_t& a, const __uint256_t& b) {
	a._[0] -= b._[0];
	a._[1] -= b._[1] + (~a._[0] < b._[0]);
	return a;
}

__uint256_t& operator>>=(__uint256_t& a, const int s) {
	__uint8_t i = s & 0x7F;
	if (i) {
		a._[0] >>= i;
		a._[0] += a._[1] << (128-i);
		a._[1] >>= i;
	}
	a._[0] -= (a._[0] - a._[1]) * (s >> 7);
	a._[1] -= a._[1] * (s >> 7);
	return a;
}

__uint256_t operator>>(const __uint256_t& a, const int s) {
	__uint256_t r = a;
	r >>= s;
	return r;
}

__uint256_t& operator<<=(__uint256_t& a, const int s) {
	__uint8_t i = s & 0x7F;
	if (i) {
		a._[1] <<= i;
		a._[1] += a._[0] >> (128-i);
		a._[0] <<= i;
	}
	a._[1] -= (a._[1] - a._[0]) * (s >> 7);
	a._[0] -= a._[0] * (s >> 7);
	return a;
}

__uint128_t operator&(const __uint256_t& a, const int x)
{
	return a._[0] & x;
}

__uint256_t operator*(const bool x, const __uint256_t& a)
{
	return x ? a : 0;
}

__uint256_t operator*(const __uint128_t x, const __uint256_t& a)
{
	__uint256_t r;
	r._[0] = (__uint64_t)x * (a._[0] >> 64) + ((((x & 0xFFFFFFFFFFFFFFFF) * (a._[0] & 0xFFFFFFFFFFFFFFFF))) >> 64);
	r._[1] = r._[0] + (x >> 64) * (__uint64_t)a._[0];
	__uint128_t d = r._[0] > r._[1];
	r._[1] >>= 64;
	r._[1] += a._[1] * x + (d << 64) + (a._[0] >> 64) * (x >> 64);
	r._[0] = a._[0] * x;
	return r;
}

__uint256_t operator*(const int x, const __uint256_t& a)
{
	return (__uint128_t)x * a;
}

__uint256_t operator*(const __uint256_t x, const __uint256_t& a)
{
	__uint256_t r = x._[0] * a;
	r._[1] += x._[1] * a._[0];
	return r;
}

bool operator>=(const __uint256_t& a, const __uint256_t& b) {
	return
		(a._[1] > b._[1]) + (a._[1] == b._[1]) * (a._[0] >= b._[0]);
}

bool operator==(const __uint256_t& a, const __uint256_t& b) {
	return (a._[1] == b._[1]) * (a._[0] == b._[0]);
}

bool operator!=(const __uint256_t& a, const __uint256_t& b) {
	return (a._[1] != b._[1]) + (a._[0] != b._[0]);
}

bool operator==(const __uint256_t& a, const int& i) {
	return (a._[1] == 0) * (a._[0] == i);
}

__uint256_t& operator%=(__uint256_t& a, const __uint256_t& b)
{
	if (a >= b) {
		__uint256_t c = b;
		__uint16_t i = a.bit() - b.bit();
		if (i) {
			c <<= i;
		}
		while (a >= b) {
			a -= (a >= c) * c;
			c >>= 1;
		}
	}
	return a;
}

pair<__uint256_t,__uint256_t> divmod(const __uint256_t& a, const __uint256_t& b)
{
	__uint256_t q = 0;
	__uint256_t r = a;
	if (a >= b) {
		__uint256_t c = b;
		__uint256_t s = 1;
		__uint16_t i = a.bit() - b.bit();
		if (i) {
			c <<= i;
			s <<= i;
		}
		while (r >= b) {
			bool d = r >= c;
			q += d * s;
			r -= d * c;
			c >>= 1;
			s >>= 1;
		}
	}
	return pair<__uint256_t,__uint256_t>(q, r);
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

std::ostream& operator<<( std::ostream& dest, __int128_t value )
{
	__uint8_t base = 10;
	std::ostream::sentry s( dest );
	if ( s ) {
		__int128_t tmp = value;
		if (value < 0) {
			dest << "-";
			tmp = -value;
		}
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

std::ostream& operator<<(std::ostream& dest, const __uint256_t value)
{
	if (value._[1]) {
		dest << value._[1] << "'";
	}
	dest << value._[0];
	return dest;
}

std::ostream& operator>>(std::ostream& dest, const __uint256_t value)
{
	if (value._[1]) {
		dest >> value._[1] << "'";
	}
	dest >> value._[0];
	return dest;
}

template<class T>
void print_matrix(vector< vector<T> >& v, const string &text = "") {
	stringstream str;
	for (auto j: v) {
		for (auto k: j)
			str << k << ' ';
		str << endl;
	}
	str << text << endl;
	cout << str.str();
}

template<class T>
void print_vector(vector<T>& v, const string &text = "") {
	stringstream str;
	for (auto i: v) {
		str << i << ", ";
	}
	str << text << endl;
	cout << str.str();
}
