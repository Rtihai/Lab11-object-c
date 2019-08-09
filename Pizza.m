#import "Pizza.h"

@implementation Pizza

- (instancetype) initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings
{
    self = [super init];
    if (self)
    {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza *) meatLoverWithSize: (PizzaSize) size
{
    return [[Pizza alloc] initWithSize: size andToppings:@[@"Chicken", @"Beef", @"Pork"]];
}

+ (Pizza *) largePepperoni
{
    return [[Pizza alloc] initWithSize: LARGE andToppings:@[@"Pepperoni", @"Ham", @"Cheese"]];
}

+ (PizzaSize) sizeFromString: (NSString *) str
{
    NSString *lowered = str.lowercaseString;
    if ([lowered isEqualToString:@"small"])
    {
        return SMALL;
    } else if ([lowered isEqualToString:@"medium"])
    {
        return MEDIUM;
    } else if ([lowered isEqualToString:@"large"])
    {
        return LARGE;
    } else
    {
        return -1; // return anything it is gonna be the default size
    }
}

- (NSString *) description
{
    NSString *toppings;
    if (_toppings.count > 0 )
    {
        toppings = [_toppings componentsJoinedByString: @" "];
    } else
    {
        toppings = @"no toppings";
    }
    return [NSString stringWithFormat: @"Pizza - %d size and toppings: %@", _size, toppings];
}

@end
