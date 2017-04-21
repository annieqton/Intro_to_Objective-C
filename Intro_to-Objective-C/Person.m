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


//FOR LAB TODAY - ARC
//after turn off ARC

//setters
-(void)setFirstName:(NSString *)firstName{
    
    if(_firstName != firstName){
        [firstName retain]; //retain new one
        [_firstName release]; //release old one
        _firstName = firstName; //reassign
    }
}

//getters
//-(NSString *)firstName{a
//    return _firstName;
//}

-(NSString *)descriptionFirstName{
    
    NSString *descriptionFirstName = [[NSString stringWithFormat:@"FIRST NAME: %@", self.firstName] autorelease];

    [descriptionFirstName retain];
    
    return descriptionFirstName;
}




-(void)setLastName:(NSString *)lastName{
    
    if(_lastName != lastName){
        [lastName retain];
        [_lastName release];
        _lastName = lastName;
    }
}

//getters
//-(NSString *)lastName{
//    return _lastName;
//}

-(NSString *)descriptionLastName{
    
    NSString *descriptionLastName = [[NSString stringWithFormat:@"LAST NAME: %@", self.lastName] autorelease];
    
    [descriptionLastName retain];
    
    return descriptionLastName;
}



-(void)setAge:(NSNumber *)age{
    
    if(_age != age){
        [age retain];
        [_age release];
        _age = age;
    }
}

//getters
//-(NSNumber *)age{
//    return _age;
//}

-(NSNumber *)descriptionAge{
    
    NSNumber *descriptionAge = [[NSNumber numberWithInt:(int) self.age] autorelease];
    
    [descriptionAge retain];
    
    return descriptionAge;
}




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
