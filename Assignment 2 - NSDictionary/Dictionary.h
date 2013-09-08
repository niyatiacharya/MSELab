#import <Foundation/Foundation.h>

@interface Dictionary:NSObject
{
   NSDictionary *dict;
}
@property (retain,nonatomic) NSDictionary *dict;

-(void) print;

@end