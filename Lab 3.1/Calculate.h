#import "Goods.m"
#import "kst.h"
#import "cst.h"
#import "vat.h"

@interface Calculate: NSObject <KST, CST, VAT>
{
	double amount;
}

-(double)calcTax:(Goods*)item;

@end