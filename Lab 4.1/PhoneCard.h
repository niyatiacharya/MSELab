#import <Foundation/Foundation.h>

@interface PhoneCard:NSObject
{
	NSString *name;
	NSString *email;
	int phNo;
}
@property (copy) NSString *name;
@property (copy) NSString *email;
@property int phNo;

-(void) print;

@end