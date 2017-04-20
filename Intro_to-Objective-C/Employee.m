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
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];

    
    if(self){
        _emailAddress = emailAddress;
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];  //arc4random_uniform gives int values representing between 0 up to the upper bound
    }
    
    return self;
}



//FOR LAB TODAY - ARC
//after turn off ARC

//Getters and setters for email address
-(void)setEmailAddress:(NSString *)emailAddress{
    
    if(_emailAddress != emailAddress){
        [emailAddress retain]; //retain new one
        [_emailAddress release]; //release old one
        _emailAddress = emailAddress; //reassign
    }
}

//-(NSString *)emailAddress{
//    return _emailAddress;
//}

-(NSString *)descriptionemailAddress{
    
    NSString *descriptionemailAddress = [[NSString stringWithFormat:@"EMAIL ADDRESS: %@", self.emailAddress] autorelease];
    
    [descriptionemailAddress retain];
    
    return descriptionemailAddress;
}


//Getters and setters for years employed
-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    
    if(_yearsEmployed != yearsEmployed){
        [yearsEmployed retain]; //retain new one
        [_yearsEmployed release]; //release old one
        _yearsEmployed = yearsEmployed; //reassign
    }
}

//-(NSNumber *)yearsEmployed{
//    return _yearsEmployed;
//}

-(NSNumber *)descriptionYearsEmployed{
    
    NSNumber *descriptionYearsEmployed = [[NSNumber numberWithInt:self.yearsEmployed.intValue] autorelease];
    
    [descriptionYearsEmployed retain];
    
    return descriptionYearsEmployed;
}


//Getters and setters for manager name
-(void)setManagerName:(NSString *)managerName{
    
    if(_managerName != managerName){
        [managerName retain]; //retain new one
        [_managerName release]; //release old one
        _managerName = managerName; //reassign
    }
}

//-(NSString *)managerName{
//    return _managerName;
//}

-(NSString *)descriptionManagerName{
    
    NSString *descriptionManagerName= [[NSString stringWithFormat:@": %@", self.managerName] autorelease];
    
    [descriptionManagerName retain];
    
    return descriptionManagerName;
}








-(instancetype)initWithCoder:(NSCoder *)aDecoder{  //write to disk
    self = [super init];
    
    if(self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.emailAddress = [aDecoder decodeObjectForKey:@"emailAddress"];
        
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
    }
    return self;
}


-(void)encodeWithCoder:(NSCoder *)aCoder{  //save to disk
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.emailAddress forKey:@"emailAddress"];
    
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
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
