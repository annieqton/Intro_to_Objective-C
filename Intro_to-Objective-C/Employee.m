//
//  Employee.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "Employee.h"

@implementation Employee


-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age
                     emailAddress:(NSString *)emailAddress
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName{  //we don't need to include employeeNumber because it is generated as the employee is created. we only include here what is needed to create employee
    
    self = [super initWithFirstName:@"Adam" lastName:@"Wallraff" andAge:@30];

    
    if(self){
        _emailAddress = emailAddress;
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];  //arc4random_uniform gives int values representing between 0 up to the upper bound
    }
    
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    employee.emailAddress = self.emailAddress;
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}


@end
