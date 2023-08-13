/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, August 2023
*/
#pragma once

#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

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
