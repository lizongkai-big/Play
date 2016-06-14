#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main()
{
	srand((unsigned)time(0));
	int Number=0;
	int price = rand() % 100;
	int min = 0;
	int max = 100;
	printf("\n====This is a Number Guess Game!====\n");
	do{
		puts("Please input a number between 1 and 100: ");
		scanf("%d",&Number);
		printf("Your input number is %d\n",Number);
	}while( !(Number>=1 && Number<=100) );
	while( Number!=price )
	{
		if(Number < price){
			if(Number > min)
				min = Number;
			  //puts("The Number you input is smaller!Please try again.^_^");
			  printf("Now，you should input a number between %d and %d\n",min,max);
		}
		else if(Number > price){
			if(Number < max)
				max = Number;
			  //puts("The Number you input is bigger!Please try again.^_^");
			  printf("Now，you should input a number between %d and %d\n",min,max);
		}
		scanf("%d",&Number);
	}
	puts("Congratulations!");
	system("pause");
	return 0;
}
