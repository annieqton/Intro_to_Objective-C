//
//  ViewController.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSString+String.h"
#import "EmployeeDatabase.h"
#import "Employee.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Employee *original = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" andAge:@30 yearsEmployed:@2 andManager:@"Brook"];
    
    Employee *newInstructor = [original copy]; //preserve original and create a deep copy
    
    newInstructor.firstName = @"Mike";
    
    NSLog(original.firstName);
    
    
//  LAB FROM MONDAY
    NSString *myString = @"I miss Swift";
    NSArray *sampleArray = [myString returnArrayOfWords];
    
    NSLog(@"%@", sampleArray);
    
    [myString reversedString];  //change myString to NSString
}

                             
                             
                             
-(void)requiredNumberForEachItem:(int)number{  //method for protocol
    
}

@end
