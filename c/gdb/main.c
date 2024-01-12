#include <stdio.h>

int add(int x, int y);

int main()
{
  int n1 = 2;
  int n2 = 3;

  printf("%d + %d = %d", n1, n2, add(2, 3));

  return 0;
}

int add(int n1, int n2)
{
  return n1 - n2; //故意寫成n1-n2,正確應該為n1+n2
}
