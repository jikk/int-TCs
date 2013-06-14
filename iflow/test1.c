#include <stdio.h>
#include <limits.h>

int main(int argc) {
  int i = INT_MAX;
  i += argc;
  return i;
}
