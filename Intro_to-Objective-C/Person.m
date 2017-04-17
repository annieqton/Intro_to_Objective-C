//
//  Person.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "Person.h"


@implementation Person

NSString *_name;  //underlying instance variable

NSString *_firstName;
NSString *_lastName;
NSString *_age;

// these below are replaced by @property(strong, nonatomic) NSString *name; in Person.h
//-(NSString *)name{  //getters
//    return _name;
//}
//

//-(void)setName:(NSString*)name{  //setters
//    _name = name;
//}

-(void)walk{
    
    NSString *name = [self name];  //self is an instance of the method Person
    
//    NSString * adam = @"Adam";  //and @ sign in front means string literal
    
    NSLog(@"%@ is walking...", name);  //%@ is a placeholder for name
}


+(void)sayHello {
    NSLog(@"Hello!");
}


@end
