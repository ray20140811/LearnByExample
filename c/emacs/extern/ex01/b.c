#include <stdio.h>

extern int counter; // 聲明外部變數

void bbb()
{
  printf("%d\n", counter); // 使用外部變數
}
