/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, July 2023
*/
#pragma once

#include <iostream>
#include <format>
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

std::ostream& operator<<( std::ostream& dest, const __uint512_t value )
{
	dest << value._[3] << "x" << value._[2] << "x" << value._[1] << "x" << value._[0];
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
