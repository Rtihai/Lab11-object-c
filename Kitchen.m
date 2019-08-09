#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    
    Pizza *pizza;
    
    if (_delegate) {
        
        if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            return nil;
        }
        
        if ([_delegate kitchenShouldUpgradeOrder:self]) {
            pizza = [[Pizza alloc]initWithSize:LARGE andToppings:toppings];
        }
        else{
            pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
        }
        
        if( [_delegate respondsToSelector:@selector(kitchenDidMakePizza:)] ) {
            [_delegate kitchenDidMakePizza:pizza];
        }
        
    }
    else{
        pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
    }
    return pizza;
}

@end
