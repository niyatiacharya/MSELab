#import<Foundation/Foundation.h>

@interface print: NSObject
{
	NSString* empname;	
	NSString* empdept;		//class specification
	int empid;
}

@property int empid;
@property (assign) NSString* empname;
@property (assign) NSString* empdept;

//-(void)addStringValue:(NSString*)astring andArg:(int)nid andArg:(NSString*)ndept;
-(void)print;

@end
