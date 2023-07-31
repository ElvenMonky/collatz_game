#include "__uint512_t.h"

#include <cstdlib>
#include <format>
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

	__uint128_t x = 0;
	__uint16_t l = 0;
	__uint16_t m = 0;
	while (1) {
		++m;
		__int128_t y = p2[m+1];
		for (__uint128_t s = p2[m-1]; s < p2[m]; ++s) {
			if (s & 1) {
				x += p2[0]*p3[l++];
			} else {
				x = 0;
				l = 0;
				for (__uint16_t i=m; i>0; --i) {
					__uint16_t d = (s >> (i-1)) & 1;
					x += p2[i-1]*p3[l]*d;
					l += d;
				}
			}
			y = p2[m+1]-p3[l];
			y -= 2*y*(y<0);
			if (x%y == 0) {
				std::string sign = p2[m+1]-p3[l] < 0 ? "-" : "";
				stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\tm=" << (m+1) << ",\tl=" << l << ",\tn=" << sign << x/y << ",\ty=" << sign << (__uint128_t)y << ",\ts=" << (__int128_t)s << '0' << endl;
				cout << str.str();
			}
		}
	}
}
