#include <iostream>
#include <vector>

using namespace std;

__uint16_t J = 4;
__uint16_t K = 7;
__uint128_t y;
vector<__uint128_t> x2;
vector<__uint16_t> solution;

void initialize_XY() {
	__uint128_t y3 = 1;
	for (__uint16_t k = 0; k < K; ++k) {
		y3 += 2 * y3;
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

	x2.resize(J+K+1);
	x2[0] = 1;
	for (__uint16_t j = 1; j < J+K+1; ++j) {
		x2[j] = (x2[j-1]<<1);
		x2[j] -= y * (x2[j] >= y);
	}

	solution.resize(0);
	solution.resize(J+K+1);
}

void iterate(__uint16_t j, __uint16_t k, __uint128_t x) {
	cout << j << " " << k << endl;
	while (x >= y) x -= y;
    if (x == 0 && ((J-j+k+1)>>1) == 1)
        throw 1;
    if (j >= J+K || k >= K)
        return;
	++j;
    iterate(j,k+1,3*x);
	solution[j] = k;
    iterate(j,k,x+x2[j]);
}

int main () {
	initialize_XY();
	try {
		iterate(0,0,1);
	} catch (...) {
		for (auto i: solution) {
			cout << i << ", ";
		}
		cout << "Solution!" << endl;
	}
}
