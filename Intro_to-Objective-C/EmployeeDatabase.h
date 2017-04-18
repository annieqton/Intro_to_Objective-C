//
//  EmployeeDatabase.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeDatabase : NSObject

+(instancetype)shared;

-(NSInteger)count;

-(NSArray *)allEmployees;  //needs * because it's a reference type

-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;

-(void)remove:(Employee *)employee;

-(void)remove:(Employee *)employee atIndex:(int)index;

@end
