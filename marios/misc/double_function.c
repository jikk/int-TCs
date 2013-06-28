#include <stdio.h>
#include <stdlib.h>
void bar(int a)
{
	char b = (char) a;
	printf("%c\n", b);
}

void foo1(int a)
{
	bar(a);
}

void foo(int a)
{
	foo1(a);
}

int main()
{
	char s[4];
	fgets(s, 4, stdin);
	int a = atoi(s);
    //int a = 0;
	foo(a);
	printf("%d\n", a);
	return 0;
}
