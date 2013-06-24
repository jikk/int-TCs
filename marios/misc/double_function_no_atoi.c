#include <stdio.h>
#include <stdlib.h>

void foo2(unsigned char a)
{
	char c = (char) a;
	printf("%c\n", c);
}

void bar(unsigned char a)
{
	char c = (char) a;
	foo2(a);
	printf("%c\n", c);
}

void foo(unsigned char a)
{
	bar(a);
}

int main()
{
/*	char s[4];
	fgets(s, 4, stdin);
	unsigned char a = (unsigned char) s[0];
*/
	unsigned char a = 1000;
	foo(a);
}
