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

typedef __uint256_t _bigint;

constexpr __uint16_t M2=162;
constexpr __uint16_t M3=162;
constexpr __uint16_t DM = 12;
__uint16_t m = 1;
__uint16_t T = 11;

__uint16_t p2[DM+1];
_bigint p23[M2][M3];
_bigint pp23[M3][M3];
_bigint dx[M3];
_bigint yy[M3];
_bigint ymin;
_bigint dy[2 << DM];

__uint16_t dl[M3][2 << DM];
_bigint dz[M3][2 << DM];
int mask = (1 << DM) - 1;

int main () {
	ofstream destfile;
	destfile.open("solutions.txt");

	p2[0] = 1;
	for (__uint16_t dm = 1; dm <= DM; ++dm) {
		p2[dm] = 1 << dm;
	}

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

	for (__uint16_t m2 = 1; m2 < M3; ++m2) {
		for (__uint16_t m3 = 0; m3 < m2; ++m3) {
			pp23[m2][m3] = p23[m2-m3-1][m3+1];
			pp23[m2][m3] -= p23[m2-1][1];
		}
	}

	dy[0] = 0;
	dy[1] = 0;

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
			__uint16_t dt = p2[dm+1]-1;
			for (__uint16_t t = 0; t <= dt; t += 1) {
				dzl1[t+dt] = dzl1[t+p2[dm]-1];
				dll1[t+dt] = dll1[t+p2[dm]-1];
			}
			for (__uint16_t t = 0; t <= dt; t += 1) {
				if (dll1[t+dt] > l1+1) continue;
				if ((t - dzl1[t+dt]) & (p2[dm] - 1)) {
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

	// enables parallel computations
	vector<__uint16_t> range;
	range.resize(p2[T]);
	for (__uint16_t t = 0; t < p2[T]; ++t) {
		range[t] = t;
	}
	// print_vector(range);

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
			dy[2] = y;
			
			for (__uint16_t dm = 1; dm < DM; ++dm) {
				_bigint yp2 = p2[dm] * y;
				__uint16_t dt = p2[dm+1]-1;
				for (__uint16_t t = 0; t <= dt; t += 1) {
					dy[t+dt] = dy[t+(dt >> 1)];
				}
				for (__uint16_t t = 0; t <= dt; t += 1) {
					bool d = ((dy[t+dt] + t) >> dm) & 1;
					dy[t+dt] += d * yp2;
					//cout << t << " " << dy[t+dt] << endl;
				}
			}

			// 3^m1 - 2^m1 < 2^m - 3^l
			_bigint x = p23[m-1-l][l];
			x -= p23[m-1][0];
			pair<_bigint, _bigint> pn = divmod(x, y);
			_bigint pq = pn.first;
			pq <<= 1;
			pq += 1;
			_bigint mn = pq;
			__uint16_t m1;
			__uint16_t m2 = 0;
			for (m1 = 1; m1 <= 2*l && m1 <= 2*(m-1-l); ++m1) {
				x = p23[m-1-l-(m1+1)/2][l-m1/2];
				x -= p23[m-1-m1][0];
				pn = divmod(x, y);
				pq = pn.first;
				x = p23[m-1-l-m1/2][l-(m1+1)/2];
				x -= p23[m-1-m1][0];
				pn = divmod(x, y);
				pq += pn.first;
				//pq = ((m - m1 - 1)/DM + 2) * pq;
				pq += m1/2;
				pq <<= m1;
				//cout << "\t m l m1 " << m  << " " << l  << " " << m1 << " " << ps << endl;
				if (mn > pq) {
					m2 = m1;
					mn = pq;
				}
			}
			m1 = m - m2 - 1;
			__uint16_t r = (m1-1)%DM;
			__uint16_t rmask = p2[r] - 1;

			__uint16_t r2 = m2%DM;
			__uint16_t rmask2 = p2[r2] - 1;

			__uint16_t ys;
			_bigint ym = y.inv(ys);

			stringstream str;
			double seconds_since_start = difftime(time(0), start_time);
			str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
			str << "\t l m1 m2 y " << l << " " << m1 << " " << m2 << " " << y << endl;
			cout << str.str();

			std::for_each(std::execution::par, range.begin(), range.end(), [&](__uint16_t& t) {
				__uint16_t m0 = (m2-T)*(m2>T);
				if (t >= p2[m2-m0]) return;
				__uint16_t l2 = 0;
				_bigint x = 0;
				__uint64_t s = t*(__uint64_t)p23[m0][0];
				__uint64_t e = s+(__uint64_t)p23[m0][0];
				for (__uint16_t i=m2; i>0; --i) {
					bool d = ((s-1)>>(i-1)) & 1;
					x += d*p23[i-1][l2];
					l2 += d;
				}
				if (t == 0) {
					x -= p23[m2][0];
				}
				/*stringstream str;
				double seconds_since_start = difftime(time(0), start_time);
				str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
				str << "\t" << m2 << " " << l2 << " " << t << " " << x << endl;
				cout << str.str();*/
				__uint16_t d = std::countr_zero(s+(__uint64_t)p23[m2][0]);
				for (; s < e; ++s, d = std::countr_zero(s)) {
					l2 -= d;
					x += p23[d+1][l2];
					x -= p23[0][d+l2];
					l2 += (s > 0);
					if (l > m1 + l2 || l <= l2)
						continue;
					__uint16_t l1 = l - l2;
					_bigint q = p23[0][l1] * x;

					_bigint qq = mulhi_fast_approx(q, ym);
					qq >>= ys;
					q -= qq * y;
					q -= (q >= y) * y;
					if (q >= y) {
						cout << "Incorrect fast reminder "<< y << " " << ym << " " << ys << " " << q << " " << (q % y) << endl;
						throw;
					}
					_bigint z = y;
					z -= q;

					/*stringstream str;
					double seconds_since_start = difftime(time(0), start_time);
					str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
					str << "\t" << m2 << " " << l1 << " " << l2 << " " << d << " " >> (s+(__uint64_t)p23[m2][0]) << " " << x << " " << q << " " << z << endl;
					cout << str.str();*/

					// n*y = z * 2^m2 + x * 3^l1
					// z * 2^m2 = n * y - x * 3^l1
					// z * 2^m2 = (n - p) * y - (x * 3^l1)%y
					// q = (x * 3^l1)%y
					// 0 <= ((n - p) * y - q) / 2^m2 = z < y
					__uint16_t mm2 = m1+1+r2;
					if (r2 > 0) {
						int d = (z & rmask2) + rmask2;
						z += dy[d];
						z >>= r2;
					}
					for (; mm2 < m; mm2 += DM) {
						int d = (z & mask) + mask;
						z += dy[d];
						z >>= DM;
					}

					/*for (__uint16_t m2 = m1+1; m2 < m; ++m2) {
						bool d = z & 1;
						z += d * y;
						z >>= 1;
					}*/

					while (p23[m1-1][0] > z) {
						z += y;
					}
					z -= p23[m1-1][0];
					while (pp23[m1][l1-1] >= z) {
						q = z;

						/*stringstream str;
						double seconds_since_start = difftime(time(0), start_time);
						str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
						str << "\t in loop: l1 l2 x y z s " << l1 << " " << l2 << " " << x << " " << y << " " << z << " " >> (s+(__uint64_t)p23[m2][0]) << endl;
						cout << str.str();*/

						__int16_t ll = l1-1;
						if (r > 0) {
							int d = (q & rmask) + rmask;
							//cout << "!! " << ll << " " << q << " " >> (q & rmask) << " " << dz[ll-1][d+rmask] << " " << dl[ll-1][d+rmask] << " " << endl;
							q -= dz[ll][d];
							q >>= r;
							ll -= dl[ll][d];
						}
						for (__uint16_t k = m1-r; ll > 0 && ll < k && pp23[k][ll] >= q; k -= DM) {
							int d = (q & mask) + mask;
							//cout << "! " << ll << " " << k << " " << q << " " >> (q & mask) << " " << dz[ll-1][d+mask] << " " << dl[ll-1][d+mask] << " " << endl;
							q -= dz[ll][d];
							q >>= DM;
							ll -= dl[ll][d];
						}
						//cout << "? " << ll << " " << r << " " << q << " " >> (q & mask) << " " << endl;
						if (q == 0 && ll == 0) {
							__uint16_t k = 0;
							__int16_t ll = l1;
							_bigint ss = s;
							q = z;
							q += p23[m1-1][0];
							for (; k < m1 && ll > 0 && q != 0; ++k) {
								bool d = q & 1;
								ll -= d * (ll > 0);
								ss += d * p23[m2 + k][0];
								q -= d * p23[0][ll];
								q >>= 1;
							}
							_bigint xx = 0;
							__uint16_t l = 0;
							for (__uint16_t i=m; i>0; --i) {
								bool d = (ss>>(i-1)) & 1;
								xx += d*p23[i-1][l];
								l += d;
							}
							pair<_bigint, _bigint> qr = divmod(xx, y);
							std::string sign = p23[m][0] >= p23[0][l] ? "" : "-";
							stringstream str;
							double seconds_since_start = difftime(time(0), start_time);
							str << seconds_since_start << "s\t" << std::this_thread::get_id() << ":";
							str << "\tm=" << m << ",\tl=" << l << ",\ts=" >> ss << '0' << ",\tr=" << qr.second << ",\tn=" << sign << qr.first << ",\ty=" << sign << y << ",\tx=" << xx << endl;
							cout << str.str();
							destfile << str.str();
							destfile.flush();
						}

						z += y;
					}
				}
			});
		}
		++m;
	}
	destfile.close();
}
