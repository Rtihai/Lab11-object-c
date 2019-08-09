#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Filipe.h"
#import "Filipe2.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Filipe *filipe = [Filipe new];
        Filipe2 *filipe2 = [Filipe2 new];
        
        while (TRUE) {
            
            NSLog(@"Please pick the manager(filipe,filipe2,none) and your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *manager = commandWords[0];
            NSString *sizeInput = commandWords[1];
            NSArray *toppings= [commandWords subarrayWithRange:NSMakeRange(2, commandWords.count -2)];
            
            restaurantKitchen.delegate = nil;
            
            if ([manager isEqualToString:@"filipe"]) {
                restaurantKitchen.delegate = filipe;
            }
            
            if ([manager isEqualToString:@"filipe2"]) {
                restaurantKitchen.delegate = filipe2;
            }
            
            Pizza *pizza;
            
            PizzaSize pizSize =[Pizza sizeFromString: sizeInput];
            
            pizza = [restaurantKitchen makePizzaWithSize:pizSize toppings:toppings];
            
            NSLog(@"\n Here is your order : %@" , pizza);
        }
        
    }
    return 0;
}
