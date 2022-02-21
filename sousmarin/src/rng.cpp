#include <Rcpp.h>
#include <stdint.h>
#include <iostream>

using namespace Rcpp;

//asdfs [[Rcpp::export]]
typedef struct xoshiro256ss_state {
	uint64_t s[4];
} xor_rng;

// ' Multiply a number by two
// '
// '
// '@export
// [[Rcpp::export]]
int double_me(int x) {
    return 2 * x;
}

//' @export
//[[Rcpp::export]]
void say_hello(int x) {
    std::cout << "You entered: " << x << std::endl;
}