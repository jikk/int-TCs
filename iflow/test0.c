#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
  char line[256];
  FILE* fp = fopen(argv[1], "r");
  char* s = fgets(line, 256, fp);
  void* alloc = malloc(line[0]);
  fclose(fp);
  free(alloc);
}
