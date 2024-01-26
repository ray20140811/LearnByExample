#include "extern.h"

extern int x;

void bar()
{
  x = 20;
  foo();
}
