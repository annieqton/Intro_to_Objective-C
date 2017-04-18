//
//  Employee.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "Employee.h"

@implementation Employee


//Create a subclass of Person called Employee, and add the following properties to Employee:  employeeNumber, yearsEmployed, managerName.
NSString *_employeeNumber;
NSString *_yearsEmployed;
NSString *_managerName;


//Define Setter and Getter methods for the new Employee properties.
-(NSString *)employeeNumber{   //getters
    return _employeeNumber;
}

-(void)setEmployeeNumber:(NSString *)employeeNumber{  //setters
    _employeeNumber = employeeNumber;
}


-(NSString *)managerName{  //getters
    return _managerName;
}

-(void)setManagerName:(NSString*)managerName{  //setters
    _managerName = managerName;
}


-(NSString *)yearsEmployed{  //getters
    return _yearsEmployed;
}

-(void)setYearsEmployed:(NSString *)yearsEmployed{  //setters
    _yearsEmployed = yearsEmployed;
}


@end
