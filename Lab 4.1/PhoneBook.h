#import <Foundation/Foundation.h>
#import "PhoneCard.h"

@interface PhoneBook:NSObject
{
	NSMutableArray *book;
	NSString *bookName;
}

-(PhoneCard *) search:(NSString *)name;
-(void) delEntry:(NSString *) name;
-(void) editEntry:(NSString *) name andArg:(int)phNo;
-(void) print;
-(int) entryCount;
-(NSMutableArray*) getBook;

@end