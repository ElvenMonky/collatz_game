/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, Jun 2023
*/

/* Based on my previous article researching specifics of explicit formula
* for elements of cycle in Collatz sequence,
* that can be used to automate search of this elements:
* https://www.kaggle.com/code/elvenmonk/collatz-conjecture-cycle-element-representatio
* I'm aware of the previous works on Cycles in Collatz conjecture,
* However, I'm not aware of any research on finding effecient algorithm to search for elements of a Collatz cycle.
*/

/* Usage:
* clang++ collatz_cycle_search.cpp -Ofast -o collatz_cycle_search -std=c++2b
* ./collatz_cycle_search
*/

/* Uncomment next line if using from Jupiter .ipynb notebook
*/
// %%writefile main.cpp

#include <algorithm>
#include <iostream>
#include <format>
#include <vector>
#include <string>
#include <sstream>
#include <thread>
#include <time.h>

/* If running on Mac, uncomment following lines and use `pstld.h` from https://github.com/mikekazakov/pstld (MIT License) by Michael G. Kazakov.
* This is because clang under Mac does not support `std::execution::par` even with `-std=c++2b`
*/
#define PSTLD_HEADER_ONLY   // no prebuilt library, only the header
#define PSTLD_HACK_INTO_STD // export into namespace std
#include "pstld.h"
#include "unordered_dense.h"

using namespace std;

time_t start_time = time(0);

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

class __uint256_t {
	public:
	__uint128_t _[2];

	__uint256_t() {
	}

	__uint256_t(const int& i) {
		_[0] = i;
		_[1] = 0;
	}

	void operator=(const int& i) {
		_[0] = i;
		_[1] = 0;
	}
};

__uint256_t& operator+=(__uint256_t& a, const __uint256_t& b) {
	a._[0] += b._[0];
	a._[1] += b._[1] + (a._[0] < b._[0] ? 1 : 0);
	return a;
}

__uint256_t& operator-=(__uint256_t& a, const __uint256_t& b) {
	a._[1] -= b._[1];
	a._[0] -= b._[0] + (a._[0] < b._[0] ? 1 : 0);
	return a;
}

bool operator>=(const __uint256_t& a, const __uint256_t& b) {
	return a._[1] == b._[1] ? a._[0] >= b._[0] : a._[1] > b._[1];
}

bool operator==(const __uint256_t& a, const __uint256_t& b) {
	return a._[1] == b._[1] && a._[0] == b._[0];
}

bool operator==(const __uint256_t& a, const int& i) {
	return a._[1] == 0 && a._[0] == i;
}

std::ostream& operator<<( std::ostream& dest, const __uint256_t value )
{
	dest << value._[1] << "x" << value._[0];
	return dest;
}

template<class T>
void print_matrix(vector< vector<T> >& v) {
	stringstream str;
	for (auto j: v) {
		for (auto k: j)
			str << k << ' ';
		str << endl;
	}
	cout << str.str();
}

template<class T>
void print_vector(vector<T>& v) {
	stringstream str;
	for (auto i: v)
		str << i << ", ";
	str << endl;
	cout << str.str();
}

typedef __uint128_t _bigint;

_bigint y;
vector< vector<_bigint> > x23;
vector<_bigint> row;
ankerl::unordered_dense::map<_bigint, __uint16_t> reminderMap;
__uint16_t DJ = 2;

void initialize_XY(__uint16_t J, __uint16_t K) {
	_bigint y3 = 1;
	_bigint temp;

	for (__uint16_t k = 0; k < K; ++k) {
		temp = 0;
		temp += y3;
		temp += y3;
		y3 += temp;
	}

	y = 1;
	for (__uint16_t j = 0; j < J+K; ++j) {
		y += y;
	}
	if (y >= y3) {
		y -= y3;
	} else {
		y3 -= y;
		y = y3;
	}
	// cout << y << endl;

	x23.resize(J+K-1);
	for (__uint16_t j = 0; j < J+K-1; ++j) {
		x23[j].resize(K);
		if (j > 0) {
			x23[j][0] = 0;
			x23[j][0] += x23[j-1][0];
			x23[j][0] += x23[j-1][0];
			while (x23[j][0] >= y) {
				x23[j][0] -= y;
			}
		} else {
			x23[j][0] = 1;
		}
		for (__uint16_t k = 1; k < K; ++k) {
			x23[j][k] = 0;
			x23[j][k] += x23[j][k-1];
			x23[j][k] += x23[j][k-1];
			x23[j][k] += x23[j][k-1];
			while (x23[j][k] >= y) {
				x23[j][k] -= y;
			}
		}
	}

	// print_matrix(x23);
}

void initialize_map(__uint16_t J, __uint16_t K) {
	__uint128_t map_size = 1;
	DJ = 0;
	while (map_size < 1000000000 && DJ < J) {
		DJ += 1;
		map_size *= (K-1+DJ);
		map_size /= DJ;
	}
	DJ -= 1;

	cout << "DJ= " << DJ << endl;

	vector< vector<_bigint> > newline;
	newline.resize(DJ);
	newline[0].resize(K);
	for (__uint16_t j = 1; j < DJ; ++j) {
		newline[j].resize(K);
		for (__uint16_t k = 1; k < K; ++k) {
			newline[j][k] = 0;
			for (__uint16_t dk = 0; dk + k < K; ++dk) {
				newline[j][k] += y;
				newline[j][k] += x23[K-k-dk+j-1][k+dk-1];
				newline[j][k] -= x23[K-k-dk-1][k+dk-1];
				while (newline[j][k] >= y) {
					newline[j][k] -= y;
				}
			}
		}
	}

	// print_matrix(newline);

	for (__uint16_t j = 1; j < DJ; ++j) {
		for (__uint16_t k = 1; k < K; ++k) {
			_bigint temp = newline[j][k];
			newline[j][k] = 0;
			newline[j][k] += y;
			newline[j][k] += y;
			newline[j][k] += x23[K-k+j][k-1];
			newline[j][k] -= x23[K-k-1][k-1];
			newline[j][k] -= temp;
			while (newline[j][k] >= y) {
				newline[j][k] -= y;
			}
		}
	}

	// print_matrix(newline);
	// cout << "newline!!!" << endl;

	vector<__uint16_t> state;
	state.resize(DJ+1);
	for (__uint16_t j = 0; j < DJ; ++j) {
		state[j] = 0;
	}
	state[DJ] = K;

	_bigint x = 0;
	_bigint temp;

	__uint16_t j = 0;
	__uint16_t s = state[0];
	while (j < DJ) {
		// state[j] = s;
		// print_vector(state);
		// cout << x << ", " << y << endl;
		++s;
		if (s < K) {
			x += x23[K-s-1][s-1];
		} else {
			++j;
			while (++state[j] >= K) {
				if (++j >= DJ) {
					return;
				}
			}

			s = state[j];
			x += newline[j][s];
			while (--j > 0) state[j] = s;
			state[j] = s;
		}

		if (x >= y) {
			x -= y;
		}
		temp = y;
		temp -= x;
		// cout << temp << " " << state[DJ-1] << endl;
		reminderMap[temp] = state[DJ-1];
	}
};

// ###############################################
// # ___ ___________ ___________ ... 2^(K+J)
// # ___ 2^K*3^1     2^(K+1)*3^1 ... 2^(K+J-1)*3^1
// # ___ 2^(K-1)*3^2 2^K*3^2     ... 2^(K+J-2)*3^2
// # ... ...         ...         ... ...
// # 3^K 2^1*3^K     2^2*3^K     ... 2^J*3^K
void search_for_JK_J0K0_solution(__uint16_t J, __uint16_t K, __uint16_t J0, __uint16_t K0) {
	__uint16_t J2 = J0 > 9 ? 9 : J0-1;

	__uint16_t JS = J-1-DJ;

	vector<__uint16_t> state;
	state.resize(JS);
	for (__uint16_t j = 0; j < JS; ++j) {
		state[j] = j <= J0 ? K0 : 0;
	}
	// print_vector(state);
	// cout << "Initial state" << endl;

	vector< vector<_bigint> > newline;
	newline.resize(JS);
	newline[0].resize(K);
	for (__uint16_t j = 1; j < JS; ++j) {
		newline[j].resize(K);
		for (__uint16_t k = 1; k < K; ++k) {
			newline[j][k] = 0;
			if (k+K0 < K) {
				newline[j][k] += newline[j-1][k+K0];
			}
			for (__uint16_t dk = 0; dk < K0 && dk + k < K; ++dk) {
				newline[j][k] += y;
				newline[j][k] += x23[K-k-dk+j-1+DJ][k+dk-1];
				newline[j][k] -= x23[K-k-dk-1+DJ][k+dk-1];
				while (newline[j][k] >= y) {
					newline[j][k] -= y;
				}
			}
		}
	}

	// print_matrix(newline);

	for (__uint16_t j = 1; j < JS; ++j) {
		for (__uint16_t k = 1; k < K; ++k) {
			_bigint temp = newline[j][k];
			newline[j][k] = 0;
			newline[j][k] += y;
			newline[j][k] += y;
			newline[j][k] += x23[K-k+j+DJ][k-1];
			newline[j][k] -= x23[K-k-1+DJ][k-1];
			newline[j][k] -= temp;
			while (newline[j][k] >= y) {
				newline[j][k] -= y;
			}
		}
	}

	// print_matrix(newline);
	// cout << "newline!!!" << endl;

	_bigint x = 0;
	x += y;
	x += x23[K+J-2][0];
	x += x23[K+J-2][0];
	x -= x23[K-1][0];
	while (x >= y) {
		x -= y;
	}

	for (__uint16_t j = 0; j < JS; ++j) {
		for (__uint16_t k = 0; k < state[j]; ++k) {
			x += x23[K-k+j-2+DJ][k];
			while (x >= y) {
				x -= y;
			}
		}
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " J0= " << J0 << " K0= " << K0 << " Xmin= " << x << endl;
	cout << str.str();

	if (reminderMap.find(x) != reminderMap.end()) {
		if (reminderMap[x] >= K0) {
			print_vector(state);
			cout << reminderMap[x] << " Solution!!!" << endl;
			// return;
		}
	}

	time_t old_time = time(0);
	__uint16_t j = 0;
	__uint16_t s = state[0];
	while (j < J0) {
		// state[j] = s;
		// print_vector(state);
		// cout << x << ", " << y << endl;
		++s;
		if (s < K && s <= state[j+1] + K0) {
			x += row[s-1];
		} else {
			++j;
			while (++state[j] > state[j+1] + K0 || state[j] >= K) {
				if (++j >= J2) {
					if (j >= J0) {
						return;
					}
					/*double seconds_since_start = difftime(time(0), old_time);
					if (seconds_since_start >= 300) {
						cout << seconds_since_start << "s: ";
						for (auto i: state)
							cout << min(i, (__uint16_t)(K-1)) << ", ";
						cout << endl;
						old_time = time(0);
						seconds_since_start = difftime(old_time, start_time);
						// if (seconds_since_start >= 40000) {
						//    cout << seconds_since_start << " Time is out. Please continue from last known state";
						//    return;
						// }
					}*/
				}
			}

			s = state[j];
			x += newline[j][s];
			while (--j > 0) state[j] = s;
			state[j] = s;
		}

		if (x >= y) {
			x -= y;
		}
		if (reminderMap.find(x) != reminderMap.end()) {
			if (reminderMap[x] >= s) {
				state[j] = s;
				print_vector(state);
				cout << reminderMap[x] << " Solution!!!" << endl;
				// return;
			}
		}
	}
};

void search_for_JK_solution(__uint16_t J, __uint16_t K) {
	initialize_XY(J, K);
	initialize_map(J, K);
	cout << "J= " << J << " K= " << K << " DJ= " << DJ << " Y= " << y << endl;

	_bigint x = 0;
	x += y;
	x += x23[K+J-2][0];
	x += x23[K+J-2][0];
	x -= x23[K-1][0];
	while (x >= y) {
		x -= y;
	}

	if (reminderMap.find(x) != reminderMap.end()) {
		cout << reminderMap[x] << " Solution!!!" << endl;
	}

	row.resize(K-1);
	for (__uint16_t k = 0; k < K-1; ++k) {
		row[k] = x23[K-k-2+DJ][k];
	}

	// print_vector(row);

	vector<__uint32_t> JK;
	JK.resize((J-1-DJ)*(K-1));
	for (__uint16_t J0 = 0; J0 < J-1-DJ; ++J0) {
		for (__uint16_t K0 = 1; K0 < K; ++K0) {
			JK[J0*(K-1)+K0-1] = ((__uint32_t)(J-J0-2-DJ)<<16)+K0-1;
			// search_for_JK_J0K0_solution(J, K, J0, K0);
		}
	}
	std::for_each(std::execution::par, JK.begin(), JK.end(), [&](__uint32_t& jk) {
		search_for_JK_J0K0_solution(J, K, jk >> 16, jk - ((jk >> 16) << 16) + 1);
	});
	cout << J << ' ' << K << " End of search space" << endl;
}

int main () {
	//search_for_JK_solution(4, 4);
	// search_for_JK_solution(16, 28);
	// search_for_JK_solution(15, 30);
	// search_for_JK_solution(23, 23);
	// search_for_JK_solution(17, 29);
	search_for_JK_solution(24, 41);
	// search_for_JK_solution(55, 94);
	// search_for_JK_solution(65, 111);
	return 0;
}
