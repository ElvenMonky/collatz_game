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
	a._[1] -= b._[1] + (a._[0] < b._[0] ? 1 : 0);
	a._[0] -= b._[0];
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

template<class T>
void print_solution_vector(vector<T>& v, __uint128_t mapValue) {
	stringstream str;
	for (auto i: v) {
		str << i << ", ";
	}
	while (mapValue != 0) {
		str << (mapValue & 0xFF) << ", ";
		mapValue >>= 8;
	}
	str << " Solution!!!" << endl;
	cout << str.str();
}

typedef __uint128_t _bigint;

_bigint y;
_bigint x0;
__uint16_t DJ = 2;
vector< vector<_bigint> > x23;
vector< vector< vector<_bigint> > > newlines;
vector<_bigint> row;
ankerl::unordered_dense::map<_bigint, __uint128_t> reminderMap;
mutex reminderMap_mutex;
bool useMasks = false;
vector<__uint32_t> bitmasks;
__uint8_t N_bitmasks = 32;

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

	x0 = 0;
	x0 += y;
	x0 += x23[K+J-2][0];
	x0 += x23[K+J-2][0];
	x0 -= x23[K-1][0];
	while (x0 >= y) {
		x0 -= y;
	}
	// cout << " x= " << x0 << " y= " << y << endl;
}

void initialize_newlines(__uint16_t J, __uint16_t K, __uint16_t J0) {
	newlines.resize(K-1);
	for (__uint16_t K0 = 1; K0 < K; ++K0) {
		vector< vector<_bigint> >& newline = newlines[K0-1];
		newline.resize(J);
		newline[0].resize(K);
		for (__uint16_t j = 1; j < J; ++j) {
			newline[j].resize(K);
			for (__uint16_t k = 1; k < K; ++k) {
				newline[j][k] = 0;
				if (k+K0 < K) {
					newline[j][k] += newline[j-1][k+K0];
				}
				for (__uint16_t dk = 0; dk < K0 && dk + k < K; ++dk) {
					newline[j][k] += y;
					newline[j][k] += x23[K-k-dk+j-1+J0][k+dk-1];
					newline[j][k] -= x23[K-k-dk-1+J0][k+dk-1];
					while (newline[j][k] >= y) {
						newline[j][k] -= y;
					}
				}
			}
		}

		// print_matrix(newline);

		for (__uint16_t j = 1; j < J; ++j) {
			for (__uint16_t k = 1; k < K; ++k) {
				_bigint temp = newline[j][k];
				newline[j][k] = 0;
				newline[j][k] += y;
				newline[j][k] += y;
				newline[j][k] += x23[K-k+j+J0][k-1];
				newline[j][k] -= x23[K-k-1+J0][k-1];
				newline[j][k] -= temp;
				while (newline[j][k] >= y) {
					newline[j][k] -= y;
				}
			}
		}

		// print_matrix(newline);
		// cout << "newline!!!" << endl;
	}
}

void initialize_J0K0_bitmasks(__uint16_t J, __uint16_t K, __uint16_t J0, __uint16_t K0) {
	vector< vector<_bigint> >& newline = newlines[K-2];

	__uint16_t k0 = 1;

	vector<__uint16_t> state;
	state.resize(J);
	for (__uint16_t j = 0; j < J; ++j) {
		state[j] = j <= J0 ? K0 : k0;
	}

	_bigint x = y;

	for (__uint16_t j = 0; j < J; ++j) {
		for (__uint16_t k = k0; k < state[j]; ++k) {
			x += y;
			x -= x23[K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
			// cout << j << " " << k << " " << x << endl;
		}
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " Map J0= " << J0 << " K0= " << K0 << " X= " << x << endl;
	cout << str.str();

	for (__uint8_t i = 0; i < N_bitmasks; ++i) {
		bitmasks[(x >> i) & 0xFFFFFFFF] |= 2 << i;
	}

	__uint16_t j = 0;
	__uint16_t s = state[0];
	while (j < J0) {
		// state[j] = s;
		// print_vector(state);
		// cout << x << ", " << y << endl;
		++s;
		if (s < K) {
			x += y;
			x -= x23[K-s-1][s-1];
		} else {
			if (++j >= J0) {
				return;
			}
			while (++state[j] >= K) {
				if (++j >= J0) {
					return;
				}
			}

			s = state[j];
			x += y;
			x -= newline[j][s];
			while (--j > 0) state[j] = s;
			state[j] = s;
		}

		if (x >= y) {
			x -= y;
		}

		for (__uint8_t i = 0; i < N_bitmasks; ++i) {
			bitmasks[(x >> i) & 0xFFFFFFFF] |= 2 << i;
		}
	}
};

void initialize_bitmasks(__uint16_t J, __uint16_t K) {
	useMasks = true;
	bitmasks.resize(0);
	reminderMap.clear();

	bitmasks.resize(0x100000000);

	bitmasks[0] = 0xFFFFFFFF;

	vector<__uint32_t> JK;
	JK.resize(J*(K-2));
	for (__uint16_t J0 = 0; J0 < J; ++J0) {
		for (__uint16_t K0 = 2; K0 < K; ++K0) {
			JK[J0*(K-2)+K0-2] = ((__uint32_t)(J-J0-1)<<16)+K0-2;
			// initialize_J0K0_bitmasks(J, K, J0, K0);
		}
	}
	std::for_each(std::execution::par, JK.begin(), JK.end(), [&](__uint32_t& jk) {
		initialize_J0K0_bitmasks(J, K, jk >> 16, jk - ((jk >> 16) << 16) + 2);
	});
}

void initialize_J0K0_map(__uint16_t J, __uint16_t K, __uint16_t J0, __uint16_t K0) {
	vector< vector<_bigint> >& newline = newlines[K-2];

	__uint16_t k0 = 1;

	vector<__uint16_t> state;
	state.resize(J);
	for (__uint16_t j = 0; j < J; ++j) {
		state[j] = j <= J0 ? K0 : k0;
	}

	_bigint x = y;

	for (__uint16_t j = 0; j < J; ++j) {
		for (__uint16_t k = k0; k < state[j]; ++k) {
			x += y;
			x -= x23[K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
			// cout << j << " " << k << " " << x << endl;
		}
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " Map J0= " << J0 << " K0= " << K0 << " X= " << x << endl;
	cout << str.str();

	__uint128_t mapValue = 0;
	for (auto i: state) {
		mapValue <<= 8;
		mapValue += i;
	}

	reminderMap_mutex.lock();
	if (reminderMap.find(x) == reminderMap.end() || (reminderMap[x] & 0xFF) < state[J-1]) {
		// state[j] = s; // enable if J = 1
		// cout << x << " " << state[J-1] << endl;
		reminderMap[x] = mapValue;
	}
	reminderMap_mutex.unlock();

	__uint16_t j = 0;
	__uint16_t s = state[0];
	while (j < J0) {
		// state[j] = s;
		// print_vector(state);
		// cout << x << ", " << y << endl;
		++s;
		if (s < K) {
			x += y;
			x -= x23[K-s-1][s-1];
		} else {
			if (++j >= J0) {
				return;
			}
			while (++state[j] >= K) {
				if (++j >= J0) {
					return;
				}
			}

			s = state[j];
			x += y;
			x -= newline[j][s];
			while (--j > 0) state[j] = s;
			state[j] = s;
		}

		if (x >= y) {
			x -= y;
		}

		state[j] = s;
		mapValue = 0;
		for (auto i: state) {
			mapValue <<= 8;
			mapValue += i;
		}
		// cout << x << " " << mapValue << endl;

		reminderMap_mutex.lock();
		if (reminderMap.find(x) == reminderMap.end() || (reminderMap[x] & 0xFF) < state[J-1]) {
			reminderMap[x] = mapValue;
		}
		reminderMap_mutex.unlock();
	}
};

void initialize_map(__uint16_t J, __uint16_t K) {
	useMasks = false;
	bitmasks.resize(0);
	reminderMap.clear();

	_bigint x = 0;
	reminderMap[x] = 1;

	vector<__uint32_t> JK;
	JK.resize(J*(K-2));
	for (__uint16_t J0 = 0; J0 < J; ++J0) {
		for (__uint16_t K0 = 2; K0 < K; ++K0) {
			JK[J0*(K-2)+K0-2] = ((__uint32_t)(J-J0-1)<<16)+K0-2;
			// initialize_J0K0_map(J, K, J0, K0);
		}
	}
	std::for_each(std::execution::par, JK.begin(), JK.end(), [&](__uint32_t& jk) {
		initialize_J0K0_map(J, K, jk >> 16, jk - ((jk >> 16) << 16) + 2);
	});
}

// ###############################################
// # ___ ___________ ___________ ... 2^(K+J)
// # ___ 2^K*3^1     2^(K+1)*3^1 ... 2^(K+J-1)*3^1
// # ___ 2^(K-1)*3^2 2^K*3^2     ... 2^(K+J-2)*3^2
// # ... ...         ...         ... ...
// # 3^K 2^1*3^K     2^2*3^K     ... 2^J*3^K
void search_for_JK_J0K0_solution(__uint16_t J, __uint16_t K, __uint16_t J0, __uint16_t K0, __uint16_t DJ) {
	__uint16_t J2 = J0 > 9 ? 9 : J0;

	vector<__uint16_t> state;
	state.resize(J);
	for (__uint16_t j = 0; j < J; ++j) {
		state[j] = j <= J0 ? K0 : 0;
	}
	// print_vector(state);
	// cout << "Initial state" << endl;

	vector< vector<_bigint> >& newline = newlines[K0-1];

	_bigint x = x0;

	// cout << x << endl;

	// Mapped part shifted by 1 to reduce memory
	for (__uint16_t j = 0; j < DJ; ++j) {
		for (__uint16_t k = 0; k < 1; ++k) {
			x += x23[K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
			// cout << j << " " << k << " " << x << endl;
		}
	}

	for (__uint16_t j = 0; j < J; ++j) {
		for (__uint16_t k = 0; k < state[j]; ++k) {
			x += x23[K-k+j-2+DJ][k];
			while (x >= y) {
				x -= y;
			}
			// cout << j << " " << k << " " << x << endl;
		}
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " J0= " << (J0+DJ) << " K0= " << K0 << " Xmin= " << x << endl;
	cout << str.str();

	if (useMasks) {
		bool all = true;
		for (__uint8_t i = 0; i < N_bitmasks; ++i) {
			if ((bitmasks[(x >> i) & 0xFFFFFFFF] & (2 << i)) == 0) {
				all = false;
			}
		}
		if (all) {
			print_solution_vector(state, 0);
		}
	} else {
		if (reminderMap.find(x) != reminderMap.end() && (reminderMap[x] & 0xFF) >= K0) {
			print_solution_vector(state, reminderMap[x]);
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
		if (useMasks) {
			bool all = true;
			for (__uint8_t i = 0; i < N_bitmasks; ++i) {
				if ((bitmasks[(x >> i) & 0xFFFFFFFF] & (2 << i)) == 0) {
					all = false;
				}
			}
			if (all) {
				state[j] = s;
				print_solution_vector(state, 0);
			}
		} else {
			if (reminderMap.find(x) != reminderMap.end() && (reminderMap[x] & 0xFF) >= s) {
				state[j] = s;
				print_solution_vector(state, reminderMap[x]);
				// return;
			}
		}
	}
};

void search_for_JK_DJ_solution(__uint16_t J, __uint16_t K, __uint16_t DJ) {
	if (DJ == J) {
		return;
	}

	row.resize(K-1);
	for (__uint16_t k = 0; k < K-1; ++k) {
		row[k] = x23[K-k-2+DJ][k];
	}
	// print_vector(row);

	initialize_newlines(J-DJ, K, DJ);

	vector<__uint32_t> JK;
	JK.resize((J-1-DJ)*(K-1));
	for (__uint16_t J0 = 0; J0 < J-1-DJ; ++J0) {
		for (__uint16_t K0 = 1; K0 < K; ++K0) {
			JK[J0*(K-1)+K0-1] = ((__uint32_t)(J-J0-2-DJ)<<16)+K0-1;
			// search_for_JK_J0K0_solution(J-1-DJ, K, J0, K0, DJ);
		}
	}
	std::for_each(std::execution::par, JK.begin(), JK.end(), [&](__uint32_t& jk) {
		search_for_JK_J0K0_solution(J-1-DJ, K, jk >> 16, jk - ((jk >> 16) << 16) + 1, DJ);
	});
}


void search_for_JK_solution(__uint16_t J, __uint16_t K) {
	__uint128_t map_size = 1;
	DJ = 0;
	__uint64_t total_memory = 100000000000;
	while (map_size < total_memory && DJ < J) {
		DJ += 1;
		map_size *= (K-1+DJ);
		map_size /= DJ;
	}
	DJ -= 1;

	initialize_XY(J, K);
	cout << "J= " << J << " K= " << K << " DJ= " << DJ << " Y= " << y << endl;

	_bigint x = 0;
	reminderMap.clear();
	reminderMap[x] = K;
	x = x0;

	if (x == 0) {
		cout << "All 0 Solution!!! This is impossible, check for errors" << endl;
	}

	search_for_JK_DJ_solution(DJ+1, K, 0);

	cout << "Verified up to J= " << DJ << endl;

	initialize_bitmasks(DJ, K);

	cout << "Initialized hash map up to J= " << DJ << endl;

	/*__uint16_t DJ2 = J>>1;

	search_for_JK_DJ_solution(DJ2, K, DJ);

	cout << "Verified up to J= " << DJ2 << endl;

	initialize_newlines(DJ2, K, 0);

	initialize_bitmasks(DJ2, K);

	cout << "Initialized bitmaps up to J= " << DJ2 << endl;*/

	search_for_JK_DJ_solution(J, K, DJ);

	cout << J << ' ' << K << " End of search space" << endl;
}

int main () {
	// search_for_JK_solution(4, 4);
	// search_for_JK_solution(16, 28);
	// search_for_JK_solution(15, 30);
	// search_for_JK_solution(23, 23);

	// search_for_JK_solution(3, 5);
	// search_for_JK_solution(10, 17);
	// search_for_JK_solution(17, 29);
	search_for_JK_solution(24, 41); // ! 23.983462529567403439603296701860476859152390715391723478685858836...
	// search_for_JK_solution(27, 46);
	// search_for_JK_solution(34, 58);
	// search_for_JK_solution(41, 70);
	// search_for_JK_solution(48, 82);
	// search_for_JK_solution(55, 94); // ! 54.986475067788681056651460731094751823422554323093219682840749526...
	// search_for_JK_solution(65, 111); //   64.930837580048336141365022778207632472339399253865397710588544654...
	// search_for_JK_solution(72, 123); //   71.950387588702210318809890105581430577457172146175170436057576508...
	// search_for_JK_solution(79, 135); //   78.969937597356084496254757432955228682574945038484943161526608363...
	// search_for_JK_solution(86, 147); // ! 85.989487606009958673699624760329026787692717930794715886995640217...
	// search_for_JK_solution(117, 200); // ! 116.99250014423123629074778878956330175196288153849621209115053090...
	// search_for_JK_solution(148, 253); // ! 147.99551268245251390779595281879757671623304514619770829530542159...
	// search_for_JK_solution(179, 306); // ! 178.99852522067379152484411684803185168050320875389920449946031228...
	return 0;
}
