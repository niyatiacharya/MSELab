#import "Goods.h"

@implementation Goods

-(void)setAmount:(double)amt
{
	amount = [NSNumber numberWithDouble:amt];
}

-(void)setType:(NSString*)tp
{
	type = [[NSString alloc] initWithString:tp];
}

-(double)amount
{
	return [amount doubleValue];
}

-(NSString*)type
{
	return type;
}

@end