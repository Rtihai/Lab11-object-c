#import <Foundation/Foundation.h>

typedef NS_ENUM(int, PizzaSize)
{
    SMALL, MEDIUM, LARGE
};

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;

- (instancetype) initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;
+ (PizzaSize) sizeFromString: (NSString *) str;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoverWithSize: (PizzaSize) size;

@end
