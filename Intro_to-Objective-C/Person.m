//
//  Person.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "Person.h"


@implementation Person

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}



NSString *_firstName;
NSString *_lastName;
NSNumber *_age;


-(void)walk{
    NSString *firstName = [self firstName];
    NSLog(@"%@ is walking...", firstName);
}


+(void)sayHello {
    NSLog(@"Hello!");
}



//in order to copy, must confirm to NSCopying (see Person.h, @interface Person : NSObject <NSCopying>) and implement copyWithZone method

-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class] alloc]init];  //whatever class I am, inititate that class instead of Person
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
    
}

@end
