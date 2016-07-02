//
//  Patient.m
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWithNameandAge:(NSString *)Name age:(NSString*)Age validHealthCard:(BOOL)valid {
    
    if(self = [super init]) {
        _name = Name;
        _age = Age;
        _validHealthCard = &valid;
        _doctorInstance = nil;
        _symptoms = [NSMutableString new];
    }
    
    return self;
}
//1 add illness to list of symptoms
-(void)addSymptoms: (NSString*)illness{
   
    [_symptoms appendString:illness];
    
}
//2 ask doctor for prescription
-(void)requestMedication:(Doctor *)doctor{
    
    _doctorInstance = doctor;
    NSLog(@"Patient requesting for doctor's to treat...");
}


@end
