#include <stdio.h>
#include <sys/time.h>

int main()
{
	struct timeval tv;
	gettimeofday(&tv, ((void*)0));
	return tv.tv_sec * 1000;
}
