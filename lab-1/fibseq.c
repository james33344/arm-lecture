#include <stdio.h>
#include <time.h>
extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

	clock_t t;	
  scanf("%d",&number);
	t = clock();
  result = fibonacci(number);   
	t = clock() - t;
  printf("The fibonacci sequence at %d is: %d\n  Exec time is %.15lf\n", number, result, ((double)t)/CLOCKS_PER_SEC);
}

