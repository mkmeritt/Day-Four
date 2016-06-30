//
//  main.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        NSLog(@"Welcome to Pizza Restaurant\n");
        
        NSLog(@"Order your pizza\n");
        
        char pizzaChar[255];
        
        fgets(pizzaChar, 255, stdin);
        
        NSString* pizzaString = [NSString stringWithUTF8String:pizzaChar];
        
        NSString* sizeString = @"";
        
        if([pizzaString containsString:@"small"]) {
            sizeString = @"small";
        }
        
        else if([pizzaString containsString:@"medium"]) {
              sizeString = @"medium";
        }
        
        else if([pizzaString containsString:@"large"]) {
              sizeString = @"large";
        }
        
        NSMutableArray* toppingsArray = [[NSMutableArray alloc] init];
        
        if([pizzaString containsString:@"pepperoni"]) {
            [toppingsArray addObject:@"pepperoni"];
        }
        
        if([pizzaString containsString:@"cheese"]) {
            [toppingsArray addObject:@"cheese"];
        }
        
        if([pizzaString containsString:@"ham"]) {
            [toppingsArray addObject:@"ham"];
        }
        
        if([pizzaString containsString:@"pineapple"]) {
            [toppingsArray addObject:@"pineapple"];
        }

        
        Pizza *pizza = [[Pizza alloc] initWithSizeAndToppings:toppingsArray size:sizeString];
        NSLog(@"You ordered 1 %@%@ pizza.", [pizza pizzaSize], [pizza toppings:toppingsArray]);
        
    }
    return 0;
}
