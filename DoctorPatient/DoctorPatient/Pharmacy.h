//
//  Pharmacy.h
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

@interface Pharmacy : NSObject

-(void)makePrescription: (Patient*)patient Doctor:(Doctor*)doctor;

@property (nonatomic, strong) NSMutableArray* prescriptionList;

@end
