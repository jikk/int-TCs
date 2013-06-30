#include <stdio.h>

static int addOne(int a) {
  return a + 1;
}


int addTwo(int b) {
  return b + 2;
}




int main(int argc, char* argv[]) {

  int i = 0;
  printf("add one: %d\n", addOne(i));
  printf("add two: %d\n", addTwo(i));

  return i;
}
