#import<Foundation/Foundation.h>
#import "PhoneCard.h"
#import "PhoneBook.h"

int main(int argc,char* argv[])
{
	PhoneBook *PhBk=[[PhoneBook alloc]initWithName:@"PESIT"];
	PhoneCard *c1,*c2,*c3;
	c1=[[PhoneCard alloc]init];
	c2=[[PhoneCard alloc]init];
	c3=[[PhoneCard alloc]init];

	[c1 setName:@"c1name"];
	[c1 setEmail:@"c1@abc.com"];
	[c1 setPhNo:1234];

	[c2 setName:@"c2name"];
	[c2 setEmail:@"c2@abc.com"];
	[c2 setPhNo:6543];

	[c3 setName:@"c3name"];
	[c3 setEmail:@"c3@abc.com"];
	[c3 setPhNo:8907];

	[[PhBk getBook] addObject:c1];
	[[PhBk getBook] addObject:c2];
	[[PhBk getBook] addObject:c3];

	[PhBk print];
	NSLog(@"Number of phone card entries : %d",[PhBk entryCount]);
	[PhBk editEntry:@"c2name" andArg:0987];
	[PhBk delEntry:@"c3name"];
	[PhBk print];

	[c1 release];
	[c2 release];
	[c3 release];
	[PhBk release];
	return 0;
}