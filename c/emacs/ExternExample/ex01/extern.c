extern int counter;
extern void printdelimiter(char[], int, char);
  

void calculatecounter()
{
  char title [] = "starting calculatecounter";
  printdelimiter(title, 50, '=');
  counter++;
}
