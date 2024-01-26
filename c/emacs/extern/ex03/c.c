#include "extern.h"

extern int x; // 聲明外部變數
extern void foo(); // 聲明外部函式

void baz()
{
  x = 30; 
  foo();
}
