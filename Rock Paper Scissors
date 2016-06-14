#include<time.h> 
#include<stdio.h>
#include<stdlib.h> 
#include <math.h>

bool TellTheTime(float total, float interval){//Run for (total) seconds,and alert every (interval) seconds 
	if(total < interval){
		printf("Wrong.Should total be less than interval?\n");
		return false;
	}
	clock_t start, finish;  
	double  duration;
	float time = interval;
	start = clock();  
	for(; time <= total; time += interval)
	{
		do{
			finish = clock();  
			duration = (double)(finish - start) / CLOCKS_PER_SEC;  //1000
			//printf("\tduration:%f \n", duration ); 
		}while(duration < time);
		printf("\aThe time is %f \n",time); 
	}
	//printf("time:%f,total:%f\n",time,total);
	if(time != total){//Because the (time) increases by plusing (interval),if (time) isn't (interval)'s multiples,
					//the program hasn't run for (total) seconds,so the program should run until (total) seconds
		while(duration < total)
		{
			finish = clock();  
			//printf("finish:%d \n", finish );
			duration = (double)(finish - start) / CLOCKS_PER_SEC;  //1000
			//printf("\tduration:%f \n", duration ); 
		}
	}
	//printf( "%f seconds\n", duration );  
	return false;
}

void Judge(int Computer, int User){
	if(Computer == User){
		printf("DRAW\n"); 
		return;
	}
	if(Computer == 1){
		if(User == 2)
			printf("LOSE!-_-\n");
		else if(User == 3)
			printf("WIN!Congratulations\n");
	}else if(Computer == 2){
		if(User == 3)
			printf("LOSE!-_-\n");
		else if(User == 1)
			printf("WIN!Congratulations\n");
	}else{
		if(User == 1)
			printf("LOSE!-_-\n");
		else if(User == 2)
			printf("WIN!Congratulations\n");
	}
}
void Judge2(int Computer, int User){
	if(User == Computer){
		printf("DRAW\n"); 
		return;
	}
	if(abs(Computer - User) == 1)
		if(Computer < User) 
			printf("LOSE!-_-\n");
		else
			printf("WIN!Congratulations\n");
	else if(abs(Computer - User) == 2)
		if(Computer == 3)
			printf("LOSE!-_-\n");
		else
			printf("WIN!Congratulations\n");
}
int timer(float total){//Run for (total) seconds
	double  duration;
	int User;
	clock_t start, finish;  
	start = clock();  
	scanf("%d",&User);
	if(User > 3 || User < 1)
		//invalid 
		return -1;
	finish = clock();  
	duration = (double)(finish - start) / CLOCKS_PER_SEC;  //1000
	if(duration > total)
	{
		//printf("Invalid！\n");
		return 0;
	}
	//printf( "Timer:%f seconds\n\n", duration );  	
	return User;
}

int main()  
{
	char yes;
	srand((unsigned)time(0)); 
	int User;
	int Computer = rand() % 3 + 1;
	
	printf("-------------------Rock Paper Scissors------------------\n");
	printf("1:Rock\n2:Paper\n3:Scissors\n");
	printf("Please input your choose(1, 2 or 3) within 2 seconds\n");
	printf("Start now?('Y' or 'y')\n");
	scanf("%c",&yes);
	setbuf(stdin, NULL);
	if(!(yes == 'Y' || yes == 'y'))
		return 0;
	printf("Now you can input!\n");
	TellTheTime(2.5,1.0);
	printf("If you havn't input your choose,please input quickly!\n");
	printf("Computer:%d\n",Computer);
	User = timer(0.5);
	if(User == 0){
		 printf("Time is too long.It's not fair to computer.-_-\n");
		 return 0;
	}else if(User == -1){
		printf("Only 1, 2 or 3.^_^\n");
		return 0;
	}
	printf("Judge in the first and also common method:    ");
	Judge(Computer, User);
	printf("Judge in the second method:                   ");
	Judge2(Computer, User);
	system("pause");  
}
