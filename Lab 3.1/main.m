#import<Foundation/Foundation.h>
#import "Goods.m"
#import "Calculate.m"

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	

	float amount ;
   	char str[256];
   	
	NSLog(@"Enter the type of bill: finished goods or groceries");
   	scanf("%s",str);
  
   	NSLog(@"Enter the amount");
   	scanf("%f",&amount);

	NSString *type = [NSString stringWithUTF8String:str];
	
	Calculate *calc = [[Calculate alloc]init];
	Goods *good = [[Goods alloc]init];

	[good setType:type];
	[good setAmount:amount];

	NSLog(@"\nAmount without tax : %.3lf\nAmount with tax: %.3lf", [good amount], [calc calcTax:good]);
	
	[calc release];
	[good release];
	[pool drain];

	return 0;
}
