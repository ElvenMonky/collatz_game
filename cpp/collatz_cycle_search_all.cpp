/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, July 2023
*/
#include "__uint512_t.h"

#include <bit>
#include <iostream>
#include <sstream>
#include <thread>
#include <time.h>
#include <vector>

using namespace std;

time_t start_time = time(0);

__uint16_t M=80;

int main () {
	__int128_t p2[M+1];
	__int128_t p3[M+1];
	p2[0] = 1;
	p3[0] = 1;
	for (__uint16_t m = 1; m < M+1; ++m) {
		p2[m] = 2*p2[m-1];
		p3[m] = 3*p3[m-1];
	}

	__int128_t dx[M+1];
	for (__uint16_t m = 0; m < M+1; ++m) {
		dx[m] = p2[m];
		for (__uint16_t i=0; i<m; ++i) {
			dx[m] -= p2[i]*p3[m-i-1];
		}
		// cout << dx[m] << endl;
	}


	__uint128_t x = 0;
	__uint16_t l = 0;
	__uint16_t m = 0;
	while (1) {
		++m;
		__int128_t y[m+1];
		for (__uint16_t l=0; l<=m; ++l) {
			y[l] = p2[m+1]-p3[l];
			if (y[l] < 0)
				y[l] = -y[l];
		}
		for (__uint128_t s = p2[m-1]; s < p2[m]; ++s) {
			__uint16_t d = std::countr_zero(s);
			l -= d;
			x += dx[d]*p3[l++];
			if (x%y[l] == 0) {
				std::string sign = p2[m+1]-p3[l] < 0 ? "-" : "";
				stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\tm=" << (m+1) << ",\tl=" << l << ",\tn=" << sign << x/y[l] << ",\ty=" << sign << (__uint128_t)y[l] << ",\ts=" << (__int128_t)s << '0' << endl;
				cout << str.str();
			}
		}
	}
}
