#include <stdio.h>
#include <limits.h>

int main(int argc) {
  int i = INT_MAX;
  int j = 0;
  i += argc;
  j += argc;
  return i + j;
}
