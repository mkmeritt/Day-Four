//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Mark Meritt on 2016-06-30.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject


-(id)initWithSizeAndToppings: (NSArray*)Toppings size:(NSString*)Size;
-(NSString*)pizzaSize;
-(NSMutableString*)toppings: (NSArray*)toppings;
-(void)printPizza;
@end
