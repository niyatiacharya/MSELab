#import "PhoneBook.h"
#import "PhoneCard.h"

@implementation PhoneBook

-(id)initWithName:(NSString *)name
{
	 if ((self = [super init]))
    {
		bookName=[[NSString alloc]initWithString:name];
		book=[[NSMutableArray alloc]init];
    }
    return self;
}

- (id) init
{
    if (( self = [super init]))
    {
	 	[self initWithName:@"Blank"];
    }
    return self;
}

-(PhoneCard *) search:(NSString *)name
{
	for(PhoneCard *nextCard in book)
	{
		if([nextCard.name caseInsensitiveCompare:name]==NSOrderedSame)
			return nextCard;
	}
	return nil;
}
-(void) delEntry:(NSString *) name
{
	PhoneCard *temp;
	temp=[self search:name];
	[book removeObject:temp];
	[temp release];
}

-(void) editEntry:(NSString *) name andArg:(int) phNo
{
	PhoneCard *temp;
	temp=[self search:name];
	temp.phNo=phNo;
}

-(void) print
{
	for(PhoneCard *nextCard in book)
	{
		[nextCard print];
	}
}

-(int) entryCount
{
	int count=0;
	for(PhoneCard *nextCard in book)
	{
		count++;
	}
	return count;
}

-(NSMutableArray*) getBook
{
	return book;
}
@end