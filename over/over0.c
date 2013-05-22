#include <stdio.h>
#include <limits.h>
#include <stdlib.h>

int main (int argc, char* argv[] ) {
  int i = 0; 
  int j = 0;

  i = INT_MAX;
  j = i + 1;
  void* p =  malloc(j);
  free(p);
}
