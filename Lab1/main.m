#import <Foundation/Foundation.h>
#import "hw1.h"

int main(int argc,const char*argv[])
{
	print *printer=[[print alloc]init];
	
	[printer addStringValue:"Hello, World!"];
	
	[printer print];
	[printer release];
	return 0;
}