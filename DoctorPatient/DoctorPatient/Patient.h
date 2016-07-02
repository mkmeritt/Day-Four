//
//  Patient.h
//  DoctorPatient
//
//  Created by Mark Meritt on 2016-07-01.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

-(instancetype)initWithNameandAge: (NSString*)Name age:(NSString*)Age validHealthCard:(BOOL)valid;

-(void)requestMedication: (Doctor*)doctor;
-(void)addSymptoms: (NSString*)illness;

@property (nonatomic, weak) NSString* age;
@property (nonatomic, weak) NSString* name;
@property (nonatomic, strong) NSMutableString* symptoms;
@property (nonatomic, assign) BOOL* validHealthCard;
@property (nonatomic, strong) Doctor* doctorInstance;

@end
