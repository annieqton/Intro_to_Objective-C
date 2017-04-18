//
//  Employee.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "Person.h"
#import "Employee.h"


@interface Employee : Person <NSCopying>

@property(strong, nonatomic) NSString *emailAddress;
@property(strong, nonatomic) NSNumber *employeeNumber;
@property(strong, nonatomic) NSNumber *yearsEmployed;
@property(strong, nonatomic) NSString *managerName;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age
                    emailAddress: (NSString *)emailAddress
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName;


@end
