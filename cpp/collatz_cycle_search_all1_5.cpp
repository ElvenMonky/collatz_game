/* Copyright Serhii Hrynko (Date of Birth: 06/10/1982) - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Written by Serhii Hrynko <sergey.greenko@gmail.com>, August 2023
*/

/* Usage:
* clang++ cpp/collatz_cycle_search_all2.cpp -Ofast -o collatz_cycle_search -std=c++2b
* ./collatz_cycle_search
*/

#include "__uint256_t.h"

#include <bit>
#include <execution>
#include <fstream>
#include <iostream>
#include <sstream>
#include <thread>
#include <time.h>
#include <vector>

/* If running on Mac, uncomment following lines and use `pstld.h` from https://github.com/mikekazakov/pstld (MIT License) by Michael G. Kazakov.
* This is because clang under Mac does not support `std::execution::par` even with `-std=c++2b`
*/
//#define PSTLD_HEADER_ONLY   // no prebuilt library, only the header
//#define PSTLD_HACK_INTO_STD // export into namespace std
//#include "pstld.h"

using namespace std;

time_t start_time = time(0);

typedef __uint128_t _bigint;

constexpr __uint16_t M2=128;
constexpr __uint16_t M3=85;
constexpr __uint16_t DM = 16;
__uint16_t m = 1;

_bigint p23[M2][M3];
_bigint dx[M3];
_bigint maxz;
_bigint minz;
_bigint yy[M3];
_bigint ymin;
__uint128_t maxn;
__uint128_t minn;

__uint16_t dl[M3][2 << DM];
_bigint dz[M3][2 << DM];
int mask = (1 << DM) - 1;

int main () {
	ofstream destfile;
	destfile.open("solutions.txt");
	//std::vector<_bigint> dest;
	// powers of 2 and 3
	p23[0][0] = 1;
	for (__uint16_t m2 = 1; m2 < M2; ++m2) {
		p23[m2][0] = 2 * p23[m2-1][0];
	}
	for (__uint16_t m2 = 0; m2 < M2; ++m2) {
		for (__uint16_t m3 = 1; m3 < M3; ++m3) {
			p23[m2][m3] = 3 * p23[m2][m3-1];
		}
		// dest.assign(p23[m2], p23[m2] + M3);
		// print_vector(dest);
	}

	// check validity of big number operations
	for (__uint16_t m3 = 0; m3 < M3; ++m3) {
		_bigint x = p23[0][m3];
		for (__uint16_t m2 = 0; m2 < M2; ++m2) {
			x <<= m2;
			if (x != p23[m2][m3]) {
				cout << "shift error: " << m3 << " " << m2 << " " << p23[m2][m3] << " " << x << endl;
				return 0;
			}
			_bigint y = p23[m2][0] * p23[0][m3];
			if (x != y) {
				cout << "mul error: " << m3 << " " << m2 << " " << p23[m2][0] << " " << p23[0][m3] << " " << y << " " << x << endl;
				return 0;
			}
			y = p23[m2/2][0] * p23[(m2+1)/2][m3];
			if (x != y) {
				cout << "mul ab error: " << m3 << " " << m2 << " " << p23[m2/2][0] << " " << p23[(m2+1)/2][m3] << " " << y << " " << x << endl;
				return 0;
			}
			y = (__uint128_t)p23[m2/2][0] * p23[(m2+1)/2][m3];
			if (x != y) {
				cout << "mul 128 error: " << m3 << " " << m2 << " " << p23[m2/2][0] << " " << p23[(m2+1)/2][m3] << " " << y << " " << x << endl;
				return 0;
			}
			y = p23[(m2+1)/2][m3] * p23[m2/2][0];
			if (x != y) {
				cout << "mul ba error: " << m3 << " " << m2 << " " << p23[m2/2][0] << " " << p23[(m2+1)/2][m3] << " " << y << " " << x << endl;
				return 0;
			}
			x >>= m2;
		}
	}

	// 01 -> 10, 011 -> 100, 0111 -> 1000, 01111 -> 10000, ...
	for (__uint16_t m3 = 0; m3 < M3; ++m3) {
		dx[m3] = p23[0][m3];
		dx[m3] -= p23[m3][0];
	}
	// dest.assign(dx, dx + M3);
	// print_vector(dest);

	for (__uint16_t l1 = 0; l1 < M3; ++l1) {
		__uint16_t(& dll1)[] = dl[l1];
		_bigint(& dzl1)[] = dz[l1];
		dzl1[0] = 0;
		dll1[0] = 0;
		for (__uint16_t dm = 0; dm < DM; ++dm) {
			_bigint dt = p23[dm+1][0]-1;
			for (_bigint t = 0; t < dt+1; t += 1) {
				dzl1[t+dt] = dzl1[t+p23[dm][0]-1];
				dll1[t+dt] = dll1[t+p23[dm][0]-1];
			}
			for (_bigint t = 0; t < dt+1; t += 1) {
				if (dll1[t+dt] > l1+1) continue;
				if ((t - dzl1[t+dt]) & ((__uint128_t)p23[dm][0] - 1)) {
					cout << "dz error: " << l1 << " " << dm << " " >> t << " " << dzl1[t+dt] << endl;
					return 0;
				}
				bool d = ((t - dzl1[t+dt]) >> dm) & 1;
				dzl1[t+dt] += d * p23[dm][l1 - dll1[t+dt]];
				dll1[t+dt] += d;
				//cout << "dz dl: " << l1 << " " << dm << " " >> t << " " << dzl1[t+dt] << " " << dll1[t+dt] << endl;
			}
		}
	}

	for (__uint16_t l1 = 0; l1 < M3; ++l1) {
		for (_bigint t = 0; t < p23[DM+1][0]; t += 1) {
			if (dl[l1][t] > l1+1) {
				dz[l1][t] = 0;
				dl[l1][t] = 0;
			}
		}
	}

	while (1) {
		ymin = p23[m][0];
		for (__uint16_t l=0; l<=m; ++l) {
			if (p23[m][0] >= p23[0][l]) {
				yy[l] = p23[m][0];
				yy[l] -= p23[0][l];
			} else {
				yy[l] = p23[0][l];
				yy[l] -= p23[m][0];
			}
			if (ymin >= yy[l])
				ymin = yy[l];
		}
		// dest.assign(yy, yy + m);
		// print_vector(dest);

		stringstream str;
		double seconds_since_start = difftime(time(0), start_time);
		str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
		str << "\t m ymin " << m << " " << ymin << endl;
		cout << str.str();

		for (__uint16_t l=1; l < m; ++l) {
			_bigint& y = yy[l];

			__uint16_t r = (m-1)%DM;
			int rmask = p23[r][0] - 1;

			minz = p23[m-2][0];
			minz += p23[0][l];
			minz -= p23[l-1][1];
			minn = divmod(minz, y).first + 1;
			maxz = p23[m-1-l][l];
			maxz -= p23[m-1][0];
			maxn = divmod(maxz, y).first;

			stringstream str;
			double seconds_since_start = difftime(time(0), start_time);
			str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			str << "\t l y min max " << l << " " << y << " " << minn << " " << maxn << endl;
			cout << str.str();

			__uint128_t n0 = minn;
			_bigint z = n0 * y;
			_bigint q;
			while (maxn >= n0) {
				q = z;

				__uint16_t k = r;
				__int16_t ll = l-1;
				if (r > 0) {
					int d = (q & rmask) + rmask;
					// cout << "!! " << ll << " " << k << " " << q << " " >> (q & rmask) << " " << dz[ll][d] << " " << dl[ll][d] << " " << endl;
					q -= dz[ll][d];
					q >>= r;
					ll -= dl[ll][d];
				}
				for (; k < m && ll >= 0 && (__uint128_t)q > 0; k += DM) {
					int d = (q & mask) + mask;
					// cout << "! " << ll << " " << k << " " << q << " " >> (q & mask) << " " << dz[ll][d] << " " << dl[ll][d] << " " << endl;
					q -= dz[ll][d];
					q >>= DM;
					ll -= dl[ll][d];
				}
				// cout << "? " << ll << " " << k << " " << q << endl;
				if (q == 0 && ll == -1 && k == m-1) {
					__uint16_t k = 0;
					__int16_t ll = l;
					_bigint ss = 0;
					q = z;
					for (; k < m && ll > 0 && (__uint128_t)q > 0; ++k) {
						bool d = q & 1;
						ll -= d * (ll > 0);
						ss += d * p23[k][0];
						q -= d * p23[0][ll];
						q >>= 1;
					}
					_bigint xx = 0;
					__uint16_t l0 = 0;
					for (__uint16_t i=m; i>0; --i) {
						bool d = (ss>>(i-1)) & 1;
						xx += d*p23[i-1][l0];
						l0 += d;
					}
					pair<_bigint, _bigint> qr = divmod(xx, y);
					std::string sign = p23[m][0] >= p23[0][l] ? "" : "-";
					stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\tm=" << m << ",\tl=" << l << ",\ts=" >> ss << '0' << ",\tr=" << qr.second << ",\tn=" << n0 << ",\tn=" << sign << qr.first << ",\ty=" << sign << y << ",\tx=" << xx << endl;
					cout << str.str();
					destfile << str.str();
					destfile.flush();
				}

				z += y;
				++n0;
			}
		}
		++m;
	}
	destfile.close();
}
