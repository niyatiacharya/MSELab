#import "emp.h"

@implementation print
@synthesize empname,empid,empdept;
char buffer[100];

//Setter method rendered moot by @property :

/*
-(void)addStringValue:(NSString*)astring andArg:(int)nid andArg:(NSString*)ndept
{
	empdept = ndept;
	empid = nid;		
	empname = astring;
}
*/

-(void)print
{									//Displays member values
	
	NSLog(@"Name is %@",empname);
	NSLog(@"Dept is %@",empdept);
	printf("ID is : %d",empid);
}

@end