#include <stdio.h>

void printdelimiter(char* title, int length, char separator)
{
  for(int i = 0; i < length; i++)
    {
      if(i == (length - 1))
	{
	  printf("%c\n", separator);
	}
      else if(i == (length / 2))
	{
	  printf("%s", title);
	}
      else
	{
	  printf("%c", separator);	  
	}
    }
}
