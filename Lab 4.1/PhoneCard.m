#import "PhoneCard.h"

@implementation PhoneCard

@synthesize name,email,phNo;

-(void) print
{
	NSLog(@"Name: %@",name);
	NSLog(@"Email: %@",email);
	NSLog(@"Phone Number: %d",phNo);
}

@end