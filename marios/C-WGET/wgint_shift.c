#include <stdio.h>
#include <stdint.h>

typedef uint64_t wgint;

int main()
{
	wgint a; 
	a = ((wgint )(~(~((wgint )0) << (sizeof(wgint ) * 8 - 1))));
	printf("%llu", a);
	return 0;
}
