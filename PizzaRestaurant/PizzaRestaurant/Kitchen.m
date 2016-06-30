//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSMutableArray *)toppings {
    return [[Pizza alloc] initWithSize:size toppings:toppings];
}

-(Pizza *)largePepperoni{
    return [Pizza largePepperoni];
}
@end
