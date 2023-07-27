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

// #define VERBOSE_LOGS
#define PARALLEL_SEARCH

#include "__uint512_t.h"
#include "parallel_utils.h"
#include "globals.h"

#include <iostream>
#include <format>
#include <vector>
#include <string>
#include <sstream>
#include <algorithm>
#include <thread>
#include <time.h>

using namespace std;

time_t start_time = time(0);

typedef __uint128_t _bigint;

vector<_bigint> row;
__uint16_t KReal;
vector<__uint32_t> KKMap;

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

	for (__uint16_t j = 0; j < JS; ++j) {
		for (__uint16_t k = 0; k < state[j]; ++k) {
			x += x23[K-k+j-2][k];
			while (x >= y) {
				x -= y;
			}
#if defined(VERBOSE_LOGS)
			// cout << j << " " << k << " " << x << endl;
#endif
		}
	}

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " J0= " << J0 << " K0= " << K0 << " K1= " << K1 << " Xmin= " << x << endl;
	cout << str.str();

	if (x == 0) {
		state_vector.assign(state, state + JS);
		print_vector(state_vector, "Solution!!!");
	}

	if (J0 < 2) return;

	time_t old_time = time(0);
	__uint16_t j = 0;
	__uint16_t s = state[0];
	while (1) {
#if defined(VERBOSE_LOGS)
		state[j] = s;
		state_vector.assign(state, state + JS);
		print_vector(state_vector);
		cout << x << ", " << y << endl;
#endif
		++s;
		if (s < K && s <= state[j+1] + K0) {
			x += row[s-1];
		} else {
			++j;
			while (++state[j] > state[j+1] + K0 || state[j] >= K) {
				if (++j >= J0 - 1) {
					return;
				}					
#if defined(VERBOSE_LOGS)			
				if (j >= 9) {
					double seconds_since_start = difftime(time(0), old_time);
					if (seconds_since_start >= 300) {
						cout << seconds_since_start << "s: ";
						for (auto i: state)
							cout << min(i, (__uint16_t)(K-1)) << ", ";
						cout << endl;
						old_time = time(0);
						seconds_since_start = difftime(old_time, start_time);
					}
				}
#endif
			}

			s = state[j];
			x += newline[j][s];
			while (--j > 0) state[j] = s;
		}

		if (x >= y) {
			x -= y;
			if (x == 0) {
				state[j] = s;
				state_vector.assign(state, state + JS);
				print_vector(state_vector, "Solution!!!");
				x += y;
			}
		}
	}
};

void search_for_JK_solution(__uint16_t J, __uint16_t K) {
	initialize_XY(J, K);
	cout << "J= " << J << " K= " << K << " Y= " << y << endl;

	row.resize(K-1);
	for (__uint16_t k = 0; k < K-1; ++k) {
		row[k] = x23[K-k-2][k];
	}
#if defined(VERBOSE_LOGS)
	print_vector(row, "last row");
#endif

	initialize_newlines(J, K, 0);

	KReal = K;
	KKMap.clear();

	for (__uint32_t K0 = 1; K0 < K; ++K0) {
		for (__uint16_t K1 = 0; K1 <= K0 && K1+K0 < K; ++K1) {
			KKMap.push_back((K0<<16)+K1);
		}
	}

	parallel_search(0, J-1, 0, KKMap.size(), search_iteration);

	stringstream str;
	double seconds_since_start = difftime(time(0), start_time);
	str << seconds_since_start << "s " << std::this_thread::get_id() << " J= " << J << " K= " << K << "  End of search space" << endl;
	cout << str.str();
}

int main () {
	// search_for_JK_solution(4, 4);
	search_for_JK_solution(16, 28);
	search_for_JK_solution(15, 30);
	search_for_JK_solution(23, 23);

	// search_for_JK_solution(3, 5);
	// search_for_JK_solution(10, 17);
	// search_for_JK_solution(17, 29);
	// search_for_JK_solution(24, 41); // ! 23.983462529567403439603296701860476859152390715391723478685858836...
	// search_for_JK_solution(31, 53);
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
