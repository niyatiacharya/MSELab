#import "Calculate.h"

@implementation Calculate

-(double)calcKST:(double)amt
{
	return (0.14*amt);
}

-(double)calcCST:(double)amt
{
	return (0.04*amt);
}

-(double)calcVAT:(double)amt
{
	return (0.08*amt);
}

-(double)calcTax:(Goods*)item
{
	amount = [item amount];
	double kst_charge;
	double cst_charge;
	double vat_charge;
	if([[item type] caseInsensitiveCompare:@"finished goods"] == NSOrderedSame)
	{
		kst_charge = [self calcKST:amount];
		cst_charge = [self calcCST:amount];
		amount = amount + kst_charge + cst_charge;
	}
	else if([[item type] caseInsensitiveCompare:@"groceries"] == NSOrderedSame)
	{
		vat_charge = [self calcVAT:amount];
		amount += vat_charge;
	}
	return amount;
}

@end