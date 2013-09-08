#import "Date.h"

@implementation Date
@synthesize today,dayAfter,lastThursday;

-(void) print
{
   NSLog(@"Today: %@",today);
   NSLog(@"Day After tomorrow: %@",dayAfter);
}

-(void) earlierDate
{
   switch ([today compare:dayAfter])
   {
       case NSOrderedAscending:
          NSLog(@"today is earlier.");
          break;
    case NSOrderedSame:
          NSLog(@"Same dates.");
          break;
    case NSOrderedDescending:
         NSLog(@"Day after is earlier.");
         break;
   }
}

-(void) lastThursday
{
	int i=1;
	NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
	NSString * thursday = @"Thursday";
	NSDate * tempdate = [NSDate date];
	[dateFormat setDateFormat:@"EEEE"];
	NSTimeInterval secondsinday = 60*60*24;
	NSString * tempdatestring = [dateFormat stringFromDate:tempdate];
	if(![tempdatestring isEqualToString:thursday])
	{
		while(![tempdatestring isEqualToString:thursday])
		{
			tempdate = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*i];
			tempdatestring = [dateFormat stringFromDate:tempdate];
			i++;
		}
		NSLog(@"Last Thursday: %@ - %@",tempdatestring,tempdate);
	}
	else
	{
		tempdate = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*7];
		tempdatestring = [dateFormat stringFromDate:tempdate];
		NSLog(@"Last Thursday: %@ - %@",tempdatestring,tempdate);
	}
}
-(void) tenthDay
{
   int i;
	NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
	[dateFormat setDateFormat:@"EEEE"];
  	NSString * firstday = [dateFormat stringFromDate:today];
	NSArray * days = [NSArray arrayWithObjects:@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday"
	,@"Sunday",nil];
	i=0;
	while(![firstday isEqualToString:[days objectAtIndex:i]]) 
		i++;
	NSLog(@"First day is %@",[days objectAtIndex:i]);
	int temp = 0; //index of the 10th day
	i=i+10;
	temp = i%7; // to get the 10th day
	NSLog(@"10th day is %@",[days objectAtIndex:temp]);
}
@end