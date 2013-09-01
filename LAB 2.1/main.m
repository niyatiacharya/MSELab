#import<Foundation/Foundation.h>
#import "print.h"

int main(int argc,const char *argv[])
{
	char buffer[100];

	print *printer = [[print alloc]init];
	
	scanf("%s",buffer);		//pass user input to function
	[printer print:buffer];
	
	[printer release];
	
	return 0;
}