//
//  ViewController.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewControllerDataSource.h"
#import "NSString+String.h"

static int gMoveNumber = 10;

@interface ViewController () <ViewControllerDataSource>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *adam = [[Person alloc] init];   //init inherits from NSObject
    
    [adam setName:@"Adam"];
    
//    NSString *personName = [adam name];  //adam is an instance of Person Method. name is an instance of adam.  name is a message, and adam is a receiver
    
    [adam walk];
    
    [Person sayHello];  //using Person here instead of adam because it's a class method so it's called on a type, not an instance
    
    NSLog(@"%i", gMoveNumber);
    
    
    
    NSString *sampleString = @"abcdefgh12345678";
    NSArray *sampleArray = [sampleString returnArrayOfWords];
    
    NSLog(@"%@", sampleArray);
    
    [sampleString reversedString];
}

                             
                             
                             
-(void)requiredNumberForEachItem:(int)number{  //method for protocol
    
}

@end
