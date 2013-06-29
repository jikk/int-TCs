#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])  {
  long long int i, j, k;
  i = atol(argv[1]);
  j = atol(argv[2]);

  k = i * j;

  printf("res: %lld\n", k);
  return 0;

}
