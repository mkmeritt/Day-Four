//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@interface Kitchen : NSObject

-(Pizza *)makePizzaWithSize: (PizzaSize)size toppings:(NSMutableArray *)toppings;
-(Pizza *)largePepperoni;

@end
