/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, July 2023
*/
#pragma once

#include <iostream>
#include <vector>
#include <string>
#include <sstream>

using namespace std;

class __uint512_t {
	public:
	__uint128_t _[4];

	__uint512_t() {
	}

	__uint512_t(const __uint128_t& i) {
		_[0] = i;
		_[1] = 0;
		_[2] = 0;
		_[3] = 0;
	}

	void operator=(const __uint128_t& i) {
		_[0] = i;
		_[1] = 0;
		_[2] = 0;
		_[3] = 0;
	}

	__uint512_t(const __uint512_t& i) {
		_[0] = i._[0];
		_[1] = i._[1];
		_[2] = i._[2];
		_[3] = i._[3];
	}

	void operator=(const __uint512_t& i) {
		_[0] = i._[0];
		_[1] = i._[1];
		_[2] = i._[2];
		_[3] = i._[3];
	}

	operator __uint128_t() {
        return _[0];
    }
};

__uint512_t& operator+=(__uint512_t& a, const __uint512_t& b) {
	a._[0] += b._[0];
	a._[1] += b._[1] + (a._[0] < b._[0]);
	a._[2] += b._[2] + (a._[1] < b._[1]);
	a._[3] += b._[3] + (a._[2] < b._[2]);
	return a;
}

__uint512_t& operator-=(__uint512_t& a, const __uint512_t& b) {
	a._[0] -= b._[0];
	a._[1] -= b._[1] + (~a._[0] < b._[0]);
	a._[2] -= b._[2] + (~a._[1] < b._[1]);
	a._[3] -= b._[3] + (~a._[2] < b._[2]);
	return a;
}

__uint512_t& operator>>=(__uint512_t& a, const long s) {
	a._[0] >>= s;
	a._[0] += a._[1] << (128-s);
	a._[1] >>= s;
	a._[1] += a._[2] << (128-s);
	a._[2] >>= s;
	a._[2] += a._[3] << (128-s);
	a._[3] >>= s;
	return a;
}

__uint512_t& operator<<=(__uint512_t& a, const long s) {
	a._[3] <<= s;
	a._[3] += a._[2] >> (128-s);
	a._[2] <<= s;
	a._[2] += a._[1] >> (128-s);
	a._[1] <<= s;
	a._[1] += a._[0] >> (128-s);
	a._[0] <<= s;
	return a;
}

__uint512_t operator*(__uint64_t x, const __uint512_t& a)
{
 __uint512_t r = a;
	r._[0] *= x;
	r._[1] *= x;
	__uint128_t h = x * (a[0] >> 64);
	r._[1] += h >> 64 + ((__uint64_t)h > (r[0] >> 64));
	r._[2] *= x;
	h = x * (a[1] >> 64);
	r._[2] += h >> 64 + ((__uint64_t)h > (r[1] >> 64));
	r._[3] *= x;
	h = x * (a[2] >> 64);
	r._[3] += h >> 64 + ((__uint64_t)h > (r[2] >> 64));
	return r;
}

bool operator>=(const __uint512_t& a, const __uint512_t& b) {
	return
		(a._[3] > b._[3]) + (a._[3] == b._[3]) * (
		(a._[2] > b._[2]) + (a._[2] == b._[2]) * (
		(a._[1] > b._[1]) + (a._[1] == b._[1]) * (a._[0] >= b._[0])));
}

bool operator==(const __uint512_t& a, const __uint512_t& b) {
	return (a._[3] == b._[3]) * (a._[2] == b._[2]) * (a._[1] == b._[1]) * (a._[0] == b._[0]);
}

bool operator==(const __uint512_t& a, const int& i) {
	return ((a._[3] | a._[2] | a._[1]) == 0) * (a._[0] == i);
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

std::ostream& operator<<( std::ostream& dest, const __uint512_t value )
{
	bool nz = 0;
	for (__uint128_t i = 3; i > 0; --i) {
		if (value._[i]) {
			nz = 1;
		}
		if (nz) {
			dest << value._[i] << "'";
		}
	}
	dest << value._[0];
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
