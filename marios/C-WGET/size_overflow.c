#include <stdio.h>
#include <limits.h>
#define SIZE_MAX ((size_t)-1)
int main()
{
	size_t max_size = SIZE_MAX;
	size_t a = 1;
	max_size += a;
	printf("%u\n", max_size);
	return 0;
}
