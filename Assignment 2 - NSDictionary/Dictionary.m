#import "Dictionary.h"

@implementation Dictionary
@synthesize dict;

-(void) print
{
   for (id eachKey in dict)
   {
      if([eachKey rangeOfString:@"meter"].location!=NSNotFound)
      {
         id object = [dict objectForKey:eachKey];
         NSLog(@"Value: %@ Measure: %@", object, eachKey);
      }
   }
}

@end