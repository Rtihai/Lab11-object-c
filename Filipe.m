#import "Filipe.h"
#import "Kitchen.h"
#import "Pizza.h"

@implementation Filipe

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

@end
