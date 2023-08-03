/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, June 2023
*/

/* Based on my previous article researching specifics of explicit formula
* for elements of cycle in Collatz sequence,
* that can be used to automate search of this elements:
* https://www.kaggle.com/code/elvenmonk/collatz-conjecture-cycle-element-representatio
* I'm aware of the previous works on Cycles in Collatz conjecture,
* However, I'm not aware of any research on finding effecient algorithm to search for elements of a Collatz cycle.
*/

/* Usage:
* clang++ cpp/collatz_cycle_search_hash.cpp -Ofast -o collatz_cycle_search -std=c++2b
* ./collatz_cycle_search
*/

/* Uncomment next line if using from Jupiter .ipynb notebook
*/
// %%writefile main.cpp

// #define VERBOSE_LOGS
#define PARALLEL_SEARCH

#include "__uint512_t.h"
#include "parallel_utils.h"
#include "globals.h"

#include <algorithm>
#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include <thread>
#include <time.h>

// g++ on linux does not have hash for __uint128_t
namespace std {
	template<>
	struct hash<__uint128_t> {
		size_t operator()(__uint128_t var) const {
			std::hash<uint64_t> hasher = std::hash<uint64_t>{};
			size_t seed = hasher((uint64_t)var);
			seed ^= hasher((uint64_t)(var >> 64)) + 0x9e3779b9 + (seed<<6) + (seed>>2);
			return seed;
		}
	};
}

#include "unordered_dense.h"

__uint64_t getTotalSystemMemory()
{
    long pages = sysconf(_SC_PHYS_PAGES);
    long page_size = sysconf(_SC_PAGE_SIZE);
    return pages * page_size;
}

using namespace std;

time_t start_time = time(0);

vector<_bigint> row;
ankerl::unordered_dense::map<_bigint, __uint128_t> reminderMap;
std::mutex reminderMap_mutex;
__uint16_t DJ = 2;
__uint16_t KReal;
vector<__uint32_t> KKMap;
vector< vector<__uint16_t> > solutions;

void map_iteration(__uint16_t J1, __uint16_t J, __uint16_t K, __uint16_t J0, __uint16_t K0) {
	vector< vector<_bigint> >& newline = newlines[K-2];

	vector<__uint16_t> state;
	state.resize(J);
	for (__uint16_t j = 0; j < J; ++j) {
		state[j] = j <= J0 ? K0 : 1;
	}

	_bigint x = y;

	for (__uint16_t j = 0; j < J; ++j) {
		for (__uint16_t k = 1; k < state[j]; ++k) {
			x += y;
			x -= x23[K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
		}
	}

	// stringstream str;
	// double seconds_since_start = difftime(time(0), start_time);
	// str << seconds_since_start << "s " << std::this_thread::get_id() << " Map J0= " << J0 << " K0= " << K0 << " X= " << x << endl;
	// cout << str.str();

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
	while (1) {
		// state[j] = s;
		// print_vector(state);
		// cout << x << ", " << y << endl;
		if (++s < K) {
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

		x -= y * (x >= y);

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
	_bigint x = 0;
	reminderMap.clear();
	__uint64_t total_memory = getTotalSystemMemory() >> 5;
	reminderMap.reserve(total_memory);
	reminderMap[x] = 1;

	parallel_search(0, J, 2, K, map_iteration);
}

// ###############################################
// # ___ ___________ ___________ ... 2^(K+J)
// # ___ 2^K*3^1     2^(K+1)*3^1 ... 2^(K+J-1)*3^1
// # ___ 2^(K-1)*3^2 2^K*3^2     ... 2^(K+J-2)*3^2
// # ... ...         ...         ... ...
// # 3^K 2^1*3^K     2^2*3^K     ... 2^J*3^K
void search_iteration(__uint16_t J1, __uint16_t J2, __uint16_t _, __uint16_t J0, __uint16_t KK) {
	__uint16_t K1 = KKMap[KK] & 0xFFFF;
	__uint16_t K0 = KKMap[KK]>>16;
	__uint16_t K = KReal;

	vector<__uint16_t> state_vector;
	__uint16_t JS = J2-J1;
	__uint16_t state[JS];
	for (__uint16_t j = 0; j < JS; ++j) {
		state[j] = j < J0 ? K1+K0 : (j == J0 ? K0 : 0);
	}

#if defined(VERBOSE_LOGS)
	print_vector(state, "Initial state");
#endif

	vector< vector<_bigint> >& newline = newlines[K0-1];

	_bigint x = x0;

	// cout << x << endl;

	// Mapped part shifted by 1 to reduce memory
	for (__uint16_t j = 0; j < J1; ++j) {
		for (__uint16_t k = 0; k < 1; ++k) {
			x += x23[K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
			// cout << j << " " << k << " " << x << endl;
		}
	}

	for (__uint16_t j = 0; j < JS; ++j) {
		for (__uint16_t k = 0; k < state[j]; ++k) {
			x += x23[J1+K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
			// cout << j << " " << k << " " << x << endl;
		}
	}

	// stringstream str;
	// double seconds_since_start = difftime(time(0), start_time);
	// str << seconds_since_start << "s " << std::this_thread::get_id() << " J0= " << (J0+J1) << " K0= " << K0 << " K1= " << K1 << " Xmin= " << x << endl;
	// cout << str.str();

	if (reminderMap.find(x) != reminderMap.end() && (reminderMap[x] & 0xFF) >= K0) {
		state_vector.assign(state,state+JS);
		__uint128_t mapValue = reminderMap[x];
		while (mapValue != 0) {
			state_vector.insert(state_vector.begin(), mapValue & 0xFF);
			mapValue >>= 8;
		}
		solutions.push_back(state_vector);
		print_vector(state_vector, "Solution!!!");
	}

	if (J0 < 2) return;

	time_t old_time = time(0);
	__uint16_t j = 0;
	__uint16_t s = state[0];
	while (1) {
		// state[j] = s;
		// print_vector(state);
		// cout << x << ", " << y << endl;
		if (++s <= std::min(K - 1, state[j+1] + K0)) {
			x += row[s-1];
		} else {
			++j;
			while (++state[j] > std::min(state[j+1] + K0, K - 1)) {
				if (++j >= J0-1) {
					return;
				}
			}

			s = state[j];
			x += newline[j][s];
			while (--j > 0) state[j] = s;
			state[j] = s;
		}

		x -= y*(x >= y);
		if (reminderMap.find(x) != reminderMap.end() && (reminderMap[x] & 0xFF) >= s) {
			state[j] = s;
			state_vector.assign(state,state+JS);
			__uint128_t mapValue = reminderMap[x];
			while (mapValue != 0) {
				state_vector.insert(state_vector.begin(), mapValue & 0xFF);
				mapValue >>= 8;
			}
			solutions.push_back(state_vector);
			print_vector(state_vector, "Solution!!!");
		}
	}
};

void search_for_J1J2K_solution(__uint16_t J1, __uint16_t J2, __uint16_t K) {
	if (J1 == J2) {
		return;
	}

	row.resize(K-1);
	for (__uint16_t k = 0; k < K-1; ++k) {
		row[k] = x23[K-k-2+J1][k];
	}
#if defined(VERBOSE_LOGS)
	print_vector(row, "last row");
#endif

	initialize_newlines(J2-J1-1, K, J1);

	KReal = K;
	KKMap.clear();

	for (__uint32_t K0 = 1; K0 < K; ++K0) {
		for (__uint16_t K1 = 0; K1 <= K0 && K1+K0 < K; ++K1) {
			KKMap.push_back((K0<<16)+K1);
		}
	}

	parallel_search(J1, J2, 0, KKMap.size(), search_iteration);
}


void search_for_JK_solution(__uint16_t J, __uint16_t K) {
	solutions.clear();

	__uint128_t map_size = 1;
	DJ = 0;
	__uint64_t total_memory = getTotalSystemMemory() >> 5; // _bigint + __uint128
	cout << "total_memory: " << total_memory << endl;
	while (map_size < total_memory && DJ < 0.5*J) {
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

	search_for_J1J2K_solution(0, DJ, K);

	cout << "Verified up to J= " << DJ << endl;

	initialize_map(DJ, K);

	cout << "Initialized hash map up to J= " << DJ << endl;

	search_for_J1J2K_solution(DJ, J-1, K);

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " J= " << J << " K= " << K << "  End of search space" << endl;
	cout << str.str();
	for (auto s: solutions) {
		print_vector(s, "Solution");
	}
	cout << endl;
}

int main () {
	// search_for_JK_solution(4, 4);
	// search_for_JK_solution(16, 28);
	// search_for_JK_solution(15, 30);
	// search_for_JK_solution(23, 23);

	// search_for_JK_solution(3, 5);
	// search_for_JK_solution(10, 17);
	// search_for_JK_solution(17, 29);
	// search_for_JK_solution(24, 42);
	// search_for_JK_solution(24, 41); // ! 23.983462529567403439603296701860476859152390715391723478685858836...
	search_for_JK_solution(31, 53);
	// search_for_JK_solution(34, 58);
	// search_for_JK_solution(41, 70);
	// search_for_JK_solution(48, 82);
	// search_for_JK_solution(55, 94); // ! 54.986475067788681056651460731094751823422554323093219682840749526...
	// search_for_JK_solution(58, 99); //   57.911287571394461963920155450833834367221626361555624985119512799...
	// search_for_JK_solution(65, 111); //   64.930837580048336141365022778207632472339399253865397710588544654...
	// search_for_JK_solution(72, 123); //   71.950387588702210318809890105581430577457172146175170436057576508...
	// search_for_JK_solution(79, 135); //   78.969937597356084496254757432955228682574945038484943161526608363...
	// search_for_JK_solution(86, 147); // ! 85.989487606009958673699624760329026787692717930794715886995640217...
	// search_for_JK_solution(89, 152); //   88.914300109615739580968319480068109331491789969257121189274403490...
	// search_for_JK_solution(96, 164); //   95.933850118269613758413186807441907436609562861566893914743435344...
	// search_for_JK_solution(103, 176); //   102.95340012692348793585805413481570554172733575387666664021246719...
	// search_for_JK_solution(110, 188); //   109.97295013557736211330292146218950364684510864618643936568149905...
	// search_for_JK_solution(117, 200); // ! 116.99250014423123629074778878956330175196288153849621209115053090...
	// search_for_JK_solution(148, 253); // ! 147.99551268245251390779595281879757671623304514619770829530542159...
	// search_for_JK_solution(179, 306); // ! 178.99852522067379152484411684803185168050320875389920449946031228...
	return 0;
}
