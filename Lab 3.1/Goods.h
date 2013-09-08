#import<Foundation/Foundation.h>

@interface Goods: NSObject
{
	id type;
	id amount;
}

-(void)setAmount:(double)amt;

-(void)setType:(NSString*)tp;

-(double)amount;

-(NSString*)type;

@end