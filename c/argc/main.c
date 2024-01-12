#include <stdio.h>

int main(int argc, char **argv)
{
  printf("%d\n", argc);
	printf("%s\n", *argv);
	
	int skip_args = 0;
	while(skip_args < argc - 1)
	{
		printf("%s\n", *(++argv));
		skip_args++;
  }
  return 0;
}
