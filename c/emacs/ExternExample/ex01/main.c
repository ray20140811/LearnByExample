#include <stdio.h>
#include "extern.h"

int counter = 1;

int main()
{
  printf("original counter=%d\n", counter);

  printf("starting counter++\n");
  counter++;
  printf("after counter++: counter=%d\n", counter);

  calculatecounter();
  printf("after calculatecounter(): counter=%d\n", counter);


  calculatecounter();
  printf("after calculatecounter(): counter=%d\n", counter);  
  
  return 0;
}
