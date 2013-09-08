#import <Foundation/Foundation.h>
#import "Date.h"

int main(int argc,char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   NSDate *today=[NSDate date];
   Date *dat=[[Date alloc]init];
   [dat setToday:today];
   [dat setDayAfter:[today addTimeInterval:60*60*24*2]]; //Deprecated method. Modern versions of objective c use dateByAddingTimeInterval instead of addTimeInterval
   [dat print];
   [dat earlierDate];
   [dat lastThursday];
   [dat tenthDay];
   [dat release];
   [pool release];
   return 0;
}