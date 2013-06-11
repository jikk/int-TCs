#include <stdio.h>
#include <limits.h>
#include <stdlib.h>

int main (int argc, char* argv[] ) {
  int i = 0; 
  int j = 0;
  int a0[10];

  int k = argc;

  i = INT_MAX;
  j = i + 1;
  void* p0 =  malloc(j);
  void* p1 = malloc(i);

  char a1[k];

  free(p0);
  free(p1);
}
