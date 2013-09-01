#import "print.h"

@implementation print

-print:(const char*)op
{										//function accepts the operation as argument input by the user

	int n = 0;
	num1 = 20;
	num2 = 5;
	if(strcmp(op,"add") == 0)
		n = num1+num2;
	else if(strcmp(op,"subtract")==0)
		n = num1-num2;
	else if(strcmp(op,"multiply")==0)
		n = num1*num2;
	else if(strcmp(op,"divide")==0)
	{
		if(num2 == 0)
		{
			printf("Divide by zero");			//division by zero throws up an exception
			exit(1);
		}
		else
			n = num1/num2;
	}
	else
		printf("Please enter a valid operation\n");
	printf("%i \n",n);
	return 0;
}

@end