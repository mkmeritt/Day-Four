//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

enum size {
    small,
    medium,
    large
};

enum size pizzasize;

-(id)initWithSizeAndToppings:(NSArray *)Toppings size:(NSString*)Size {
    if(self = [super init]){
       
        if([Size isEqualToString:@"small"]){
             pizzasize = small;
        }
        
        if([Size isEqualToString:@"medium"]){
            pizzasize = medium;
        }
        
        if([Size isEqualToString:@"large"]){
            pizzasize = large;
        }
        
        Toppings = [[NSArray alloc] initWithArray:Toppings];
    }
    
    return self;
}

-(NSString*)pizzaSize{
    
    NSString* s = @"";
    
    switch (pizzasize) {
        case small:
            s = @"small";
            break;
            
        case medium:
            s = @"medium";
            break;
            
        case large:
            s = @"large";
            break;
    }

    return s;
}

-(NSString *)toppings:(NSArray *)Toppings{
    
    NSMutableString* s = [[NSMutableString alloc] init];
    
    for(NSString* object in Toppings){
        [s appendFormat:@" %@", object];
    }
    
    return s;
    
}



@end
