#import <Foundation/Foundation.h>

@interface Date:NSObject
{
   NSDate *today;
   NSDate *dayAfter;
   NSDate *lastThursday;
   
}

@property (retain,nonatomic) NSDate *today;
@property (retain,nonatomic) NSDate *dayAfter;
@property (retain,nonatomic) NSDate *lastThursday;

-(void) print;
-(void) earlierDate;
-(void) lastThursday;
-(void) tenthDay;

@end