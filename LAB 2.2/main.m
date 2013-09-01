#import<Foundation/Foundation.h>
#import "emp.h"

int main(int argc,const char *argv[])
{
	print *printer = [[print alloc]init];

	/*[printer addStringValue:nam andArg:1234 andArg:dept];*/
	[printer setEmpid:1234];
	[printer setEmpname:@"Niyati"];	//method calls
	[printer setEmpdept:@"ISE"];
	[printer print];

	[printer release];
	
	return 0;
}