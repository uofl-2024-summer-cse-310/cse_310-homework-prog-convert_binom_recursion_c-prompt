#include <stdio.h>
#include <stdlib.h>

int factorial(int k) {
    if (k == 0) { return 1; }
    return k * factorial(k - 1);
}

int binom(int k, int c) {
    if (c < 0 || k<0 || c>k) { return 0; }
    if (c == 0 || c == k) { return 1; }
    // return factorial(k) / (factorial(c) * factorial(k - c));
    return binom(k - 1, c - 1) + binom(k - 1, c);
}

int main(int argc, char *argv[]) {
    if(argc != 3) {
        printf("Usage: %s <k> <c>\n", argv[0]);
        return 1;
    }
    int k = atoi(argv[1]);
    int c = atoi(argv[2]);
    printf("There are %d ways to choose %d items from a set of %d items.\n", binom(k, c), c, k);
    return 0;
}