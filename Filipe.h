#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

@interface Filipe : NSObject<KitchenDelegate>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end
© 2019 GitHub, Inc.
