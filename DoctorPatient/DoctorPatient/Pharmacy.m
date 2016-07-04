//
//  Pharmacy.m
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Pharmacy.h"

@implementation Pharmacy

-(instancetype)init {
    if(self = [super init]) {
    }
    
    
    return self;
}

-(void)makePrescription:(Patient *)patient Doctor:(Doctor *)doctor {
    NSString* prescription = [doctor writePrescription:patient.symptoms];
    
    NSLog(@"%@", prescription);
    
}

-(void)printPrescription:(Patient *)patient Doctor:(Doctor *)doctor{

    for(NSString* stng in doctor.acceptedPatients) {
        
        NSLog(@"%@ \n", stng);
    }
    
}

@end
