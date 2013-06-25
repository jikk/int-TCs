#include <stdlib.h>

int main(int argc, char* argv[]) {
  div_t a;
  a =  div(1000, argc - 1);
  return a.quot;
}
