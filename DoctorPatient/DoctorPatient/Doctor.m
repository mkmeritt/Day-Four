//
//  Doctor.m
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)init {
   
    if (self = [super init]) {
        _patientInstance = nil;
        _acceptedPatients = [NSMutableArray new];
    }
    
    return self;
}

//1 create patient instance
-(void)visitWithPatient:(Patient *)aPatient name:(NSString *)Name age:(NSString*)Age valid:(BOOL)Valid{
    
    aPatient = [[Patient alloc] initWithNameandAge:Name age:Age validHealthCard:Valid];
    _patientInstance = aPatient;
}

//2 check if patient has valid health card
-(BOOL)patientAccepted{
    
    if(_patientInstance.validHealthCard){
        return YES;
    }
    
    return NO;
}

//3 add patient to list of patients
-(void)addPatient{
    
    if([self patientAccepted]){
        [_acceptedPatients addObject:_patientInstance];
    }
    
}

//4 write prescription according to the patient's symptoms
-(NSString*)writePrescription:(NSString *)symptoms{
    
    NSMutableString* prescription = [NSMutableString new];
    
    if([symptoms containsString:@"cold"]) {
        [prescription appendString:@"Buckleys"];
    }
    if([symptoms containsString:@"fever"]) {
        [prescription appendString:@"Reactin"];
    }
    
    
    NSString* finalPrescription = [NSString stringWithFormat: @"I, the Doctor recommend that %@ take %@ to clear their symptoms of %@ \n", _patientInstance.name, prescription, symptoms];

    
    return finalPrescription;
    
}

-(void)addStoredPatientsWithPrescription{
    for(Patient* patient in _acceptedPatients) {
        NSString* string = [NSString stringWithFormat:@"Patient Name: %@\n Patient Prescription: %@\n", patient.name, [self writePrescription:patient.symptoms]];
        
        [self.storedPatientsWithPrescription addObject:string];
    }
}


@end
