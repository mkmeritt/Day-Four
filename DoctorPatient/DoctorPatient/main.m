//
//  main.m
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pharmacy.h"
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Patient* patient;
        Doctor* doctor;
        Pharmacy* pharmacy;
        
        char patientName[255];
        char patientAge[255];
        char validChar[255];
        
        BOOL validCard;
        
        while (YES) {
        
        NSLog(@"Welcome to the clinic! \n");
        NSLog(@"Please enter the patient's name: \n");
        
        fgets(patientName, 255, stdin);
        
        NSString* nameString = [NSString stringWithUTF8String:patientName];
        
        NSLog(@"Please enter the patient's age: \n");
        
        fgets(patientAge, 255, stdin);
        
        NSString* ageString = [NSString stringWithUTF8String:patientAge];
        
        NSLog(@"Do you have a valid health card? y/n \n");
        
        fgets(validChar, 255, stdin);
        
        NSString* validString = [NSString stringWithUTF8String:validChar];
        
        if([validString isEqualToString:@"y\n"]){
            validCard = YES;
        } else {
            validCard = NO;
        }
        
        patient = [[Patient alloc] initWithNameandAge:nameString age:ageString validHealthCard:validCard];
        
        doctor = [[Doctor alloc] init];
        
        pharmacy = [[Pharmacy alloc] init];
        
        [doctor visitWithPatient:patient name:patient.name age:patient.age valid:*(patient.validHealthCard)];
        
        [patient requestMedication:doctor];
        
        NSLog(@"Patient identified, please enter your symptoms\n");
        
         NSLog(@"Enter cold or fever\n");
        
        char symptomsChar[255];
        
        fgets(symptomsChar, 255, stdin);
        
        NSString* symptomsString = [NSString stringWithUTF8String:symptomsChar];
        
        [patient addSymptoms:symptomsString];
        
        [doctor writePrescription:patient.symptoms];
        
        [pharmacy makePrescription:patient Doctor:doctor];
        
            
        [pharmacy printPrescription:patient Doctor:doctor];
        
        }
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
