#include <stdio.h>
#include <limits.h>
#define SIZE_MAX ((size_t)-1)
int main()
{
	size_t max_size = SIZE_MAX;
	size_t a = 0;
	a -= max_size;
	printf("%u\n", a);
	return 0;
}
