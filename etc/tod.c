#include <sys/time.h>

unsigned long HTGetTimeInMillis()
{
  struct timeval tp;
  gettimeofday(&tp,((void *)0));
  return (tp.tv_sec * 1000 + tp.tv_usec / 1000);
}
