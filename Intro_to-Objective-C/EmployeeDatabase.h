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

+(instancetype)shared;  //making it public, however you need to use the [[Employee shared] method]; in order to access it.  See ViewController.m

-(NSInteger)count;

-(NSMutableArray *)allEmployees;  //needs * because it's a reference type

-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;

-(void)remove:(Employee *)employee;

-(void)removeEmployeeAtIndex:(int)index;

-(void)removeAllEmployees;

@end
