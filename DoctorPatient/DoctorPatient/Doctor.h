//
//  Doctor.h
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

-(BOOL)patientAccepted;
-(void)addPatient;
-(NSString*)writePrescription: (NSString*)symptoms;
-(void)visitWithPatient: (Patient*)aPatient name:(NSString*)Name age:(NSString*)Age valid:(BOOL)Valid;

@property (nonatomic, strong) NSMutableArray* acceptedPatients;
@property (nonatomic, assign) BOOL requestMedication;
@property (nonatomic, strong) Patient* patientInstance;
@end
