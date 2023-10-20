/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, August 2023
*/
#pragma once

#include <bit>
#include <cstring>
#include <iostream>
#include <string>

using namespace std;

#include "print_utils.h"

class __uint256_t {
	public:
	static constexpr size_t SIZE = 32;
	__uint128_t _[2];

	__uint256_t() {
		memset(_, 0, SIZE);
	}

	__uint256_t(const __uint128_t& i) {
		memset(_, 0, SIZE);
		_[0] = i;
	}

	__uint256_t(const __uint128_t& i, const __uint128_t& j) {
		_[0] = i;
		_[1] = j;
	}

	void operator=(const __uint128_t& i) {
		memset(_, 0, SIZE);
		_[0] = i;
	}

	operator __uint64_t() {
        return _[0];
    }

	operator __uint128_t() {
        return _[0];
    }

	inline __uint16_t bit() const {
		__uint16_t i = _[1] != 0;
		__uint16_t j = 64 * ((_[i] >> 64) > 0);
		j += 63 - std::countl_zero((__uint64_t)(_[i] >> j));
		return (i << 7) + j;
	}

	inline __uint16_t bit2() const {
		__uint16_t i = _[1] != 0;
		__uint16_t j = 64 * ((_[i] >> 64) > 0);
		j += 32 * ((_[i] >> (32 + j)) > 0);
		j += 16 * ((_[i] >> (16 + j)) > 0);
		j += 8 * ((_[i] >> (8 + j)) > 0);
		j += 4 * ((_[i] >> (4 + j)) > 0);
		j += 2 * ((_[i] >> (2 + j)) > 0);
		j += ((_[i] >> (1 + j)) > 0);
		return (i << 7) + j;
	}

	friend __uint256_t& operator+=(__uint256_t& a, const __uint256_t& b);
	friend __uint256_t& operator-=(__uint256_t& a, const __uint256_t& b);
	friend __uint256_t& operator<<=(__uint256_t& a, const int s);
	friend __uint256_t operator*(const bool x, const __uint256_t& a);
	friend bool operator>=(const __uint256_t& a, const __uint256_t& b);

	__uint256_t inv(__uint16_t& s) const {
		// https://dl.acm.org/doi/pdf/10.1145/178243.178249
		// I take N = 255 for unsigned case to greatly simplify algorithm
		// m = (2^(256 + ys) + 1)/y
		s = this->bit();
		pair<__uint256_t,__uint256_t> p = divmod(__uint256_t(-1,-1), *this);
		p.second += 2;
		bool d = p.second >= *this;
		p.first += d;
		p.second -= d * *this;
		for (__uint16_t x = 0; x < s; ++x) {
			p.second <<= 1;
			p.first <<= 1;
			bool d = p.second >= *this;
			p.first += d;
			p.second -= d * *this;
		}
		return p.first;
	}

	friend pair<__uint256_t,__uint256_t> divmod(const __uint256_t& a, const __uint256_t& b);
};

__uint256_t& operator+=(__uint256_t& a, const __uint256_t& b) {
	a._[0] += b._[0];
	a._[1] += b._[1] + (a._[0] < b._[0]);
	return a;
}

__uint256_t operator+(const __uint256_t& a, const __uint16_t s) {
	__uint256_t r = a;
	r._[0] += s;
	r._[1] += r._[0] < a._[0];
	return r;
}

__uint256_t& operator-=(__uint256_t& a, const __uint256_t& b) {
	a._[0] -= b._[0];
	a._[1] -= b._[1] + (~a._[0] < b._[0]);
	return a;
}

__uint256_t operator-(const __uint16_t s, const __uint256_t& a) {
	__uint256_t r = s;
	r -= a;
	return r;
}

inline void fast_shift_right(__uint256_t& a, const __uint16_t i) {
	a._[0] >>= i;
	a._[0] |= (a._[1] << (128-i));
	a._[1] >>= i;
}

__uint256_t& operator>>=(__uint256_t& a, const int s) {
	if (s >> 7) {
		a._[0] = a._[1] >> (s & 0x7F);
		a._[1] = 0;
	} else {
		__uint8_t i = s & 0x7F;
		a._[0] >>= i;
		a._[0] |= (i != 0) * (a._[1] << (128-i));
		a._[1] >>= i;
	}
	return a;
}

__uint256_t operator>>(const __uint256_t& a, const int s) {
	__uint256_t r = a;
	r >>= s;
	return r;
}

__uint256_t& operator<<=(__uint256_t& a, const int s) {
	if (s >> 7) {
		a._[1] = a._[0] << (s & 0x7F);
		a._[0] = 0;
	} else {
		__uint8_t i = s & 0x7F;
		a._[1] <<= i;
		a._[1] |= (i != 0) * (a._[0] >> (128-i));
		a._[0] <<= i;
	}
	return a;
}

__uint128_t operator&(const __uint256_t& a, const int x) {
	return a._[0] & x;
}

__uint256_t operator*(const bool x, const __uint256_t& a) {
	return x ? a : __uint256_t();
}

__uint256_t operator*(const __uint128_t& x, const __uint256_t& a) {
	__uint256_t r;
	r._[0] = (x & 0xFFFFFFFFFFFFFFFF) * (a._[0] & 0xFFFFFFFFFFFFFFFF);
	__uint128_t y = (x >> 64) * (a._[0] & 0xFFFFFFFFFFFFFFFF);
	*(__uint128_t *)((__uint64_t *)r._+1) += (x & 0xFFFFFFFFFFFFFFFF) * (a._[0] >> 64) + (y & 0xFFFFFFFFFFFFFFFF);
	r._[1] += (y >> 64) + (a._[0] >> 64) * (x >> 64) + x * a._[1];
	return r;
}

__uint256_t operator*(const int x, const __uint256_t& a) {
	__uint256_t r;
	r._[0] = x * (a._[0] & 0xFFFFFFFFFFFFFFFF);
	*(__uint128_t *)((__uint64_t *)r._+1) += x * (a._[0] >> 64);
	r._[1] += x * a._[1];
	return r;
}

__uint256_t operator*(const __uint256_t& x, const __uint256_t& a) {
	__uint256_t r;
	r._[0] = (x._[0] & 0xFFFFFFFFFFFFFFFF) * (a._[0] & 0xFFFFFFFFFFFFFFFF);
	__uint128_t y = (x._[0] >> 64) * (a._[0] & 0xFFFFFFFFFFFFFFFF);
	*(__uint128_t *)((__uint64_t *)r._+1) += (x._[0] & 0xFFFFFFFFFFFFFFFF) * (a._[0] >> 64) + (y & 0xFFFFFFFFFFFFFFFF);
	r._[1] += (y >> 64) + (a._[0] >> 64) * (x._[0] >> 64) + a._[1] * x._[0] + x._[1] * a._[0];
	return r;
}

inline __uint128_t mulhi128_fast_approx(const __uint128_t& x, const __uint128_t& a) {
	return (((x & 0xFFFFFFFFFFFFFFFF) * (a >> 64)) >> 64) + (((x >> 64) * (a & 0xFFFFFFFFFFFFFFFF)) >> 64) + (a >> 64) * (x >> 64);
}

inline __uint256_t mulhi_fast_approx(const __uint256_t& x, const __uint256_t& a) {
	__uint256_t r;
	r._[0] = (x._[1] & 0xFFFFFFFFFFFFFFFF) * (a._[1] & 0xFFFFFFFFFFFFFFFF);
	__uint128_t y = (x._[1] >> 64) * (a._[1] & 0xFFFFFFFFFFFFFFFF);
	*(__uint128_t *)((__uint64_t *)r._+1) += (x._[1] & 0xFFFFFFFFFFFFFFFF) * (a._[1] >> 64) + (y & 0xFFFFFFFFFFFFFFFF);
	r._[1] += (y >> 64) + (a._[1] >> 64) * (x._[1] >> 64);
	r += mulhi128_fast_approx(x._[0],a._[1]);
	r += mulhi128_fast_approx(x._[1],a._[0]);
	return r;
}

bool operator>=(const __uint256_t& a, const __uint256_t& b) {
	return a._[1] == b._[1] ? a._[0] >= b._[0] : a._[1] > b._[1];
}

bool operator>(const __uint256_t& a, const __uint256_t& b) {
	return a._[1] == b._[1] ? a._[0] > b._[0] : a._[1] > b._[1];
}

bool operator<=(const __uint256_t& a, const __uint256_t& b) {
	return a._[1] == b._[1] ? a._[0] <= b._[0] : a._[1] < b._[1];
}

bool operator<(const __uint256_t& a, const __uint256_t& b) {
	return a._[1] == b._[1] ? a._[0] < b._[0] : a._[1] < b._[1];
}

bool operator==(const __uint256_t& a, const __uint256_t& b) {
	return (a._[1] == b._[1]) & (a._[0] == b._[0]);
}

bool operator!=(const __uint256_t& a, const __uint256_t& b) {
	return (a._[1] != b._[1]) | (a._[0] != b._[0]);
}

bool operator>(const __uint256_t& a, const int i) {
	return (a._[1] != 0) | (a._[0] > i);
}

bool operator==(const __uint256_t& a, const int i) {
	return (a._[1] == 0) & (a._[0] == i);
}

__uint256_t& operator%=(__uint256_t& a, const __uint256_t& b) {
	if (a >= b) {
		__uint256_t c = b;
		__uint16_t i = a.bit() - b.bit();
		c <<= i;
		while (a >= b) {
			a -= (a >= c) * c;
			c._[0] >>= 1;
			c._[0] |= c._[1] << 127;
			c._[1] >>= 1;
		}
	}
	return a;
}

__uint256_t operator%(const __uint256_t& a, const __uint256_t& b) {
	__uint256_t r = a;
	r %= b;
	return r;
}

pair<__uint256_t,__uint256_t> divmod(const __uint256_t& a, const __uint256_t& b) {
	__uint256_t q = 0;
	__uint256_t r = a;
	if (a >= b) {
		__uint256_t c = b;
		__uint256_t s = 1;
		__uint16_t i = a.bit() - b.bit();
		c <<= i;
		s <<= i;
		while (r >= b) {
			bool d = r >= c;
			q += d * s;
			r -= d * c;
			c._[0] >>= 1;
			c._[0] |= c._[1] << 127;
			c._[1] >>= 1;
			s._[0] >>= 1;
			s._[0] |= s._[1] << 127;
			s._[1] >>= 1;
		}
	}
	return pair<__uint256_t,__uint256_t>(q, r);
}

std::ostream& operator<<(std::ostream& dest, const __uint256_t& value) {
	__uint8_t base = 10;
	std::ostream::sentry s( dest );
	if ( s ) {
		__uint256_t tmp = value;
		char buffer[ 256 ];
		char* d = std::end( buffer );
		do {
			--d;
			pair<__uint256_t,__uint256_t> p = divmod(tmp, base);
			*d = "0123456789ABCDEF"[ (__uint64_t)p.second ];
			tmp = p.first;
		} while ( tmp != 0 );
		int len = std::end( buffer ) - d;
		if ( dest.rdbuf()->sputn( d, len ) != len ) {
			dest.setstate( std::ios_base::badbit );
		}
	}
	return dest;
}

std::ostream& operator>>(std::ostream& dest, const __uint256_t& value) {
	__uint8_t base = 2;
	std::ostream::sentry s( dest );
	if ( s ) {
		__uint256_t tmp = value;
		char buffer[ 256 ];
		char* d = std::end( buffer );
		do {
			--d;
			pair<__uint256_t,__uint256_t> p = divmod(tmp, base);
			*d = "0123456789ABCDEF"[ (__uint64_t)p.second ];
			tmp = p.first;
		} while ( tmp != 0 );
		int len = std::end( buffer ) - d;
		if ( dest.rdbuf()->sputn( d, len ) != len ) {
			dest.setstate( std::ios_base::badbit );
		}
	}
	return dest;
}

/*std::ostream& operator<<(std::ostream& dest, const __uint256_t value) {
	if (value._[1]) {
		dest << value._[1] << "'";
	}
	dest << value._[0];
	return dest;
}

std::ostream& operator>>(std::ostream& dest, const __uint256_t value) {
	if (value._[1]) {
		dest >> value._[1] << "'";
	}
	dest >> value._[0];
	return dest;
}*/
