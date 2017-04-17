//
//  PersonQueue.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

//Declare a protocol called PersonQueue with the following methods
//enqueue(required): Takes in a Person, returns Void
@required
-(void)enqueuePerson: (Person)person;

//dequeue(required): Takes no arguments, returns a Person
@required
-(Person)dequeuePerson: (Person)person;

//count(optional): Takes no arguments, returns an int
@optional
-(int)countPerson: (int)person;

@end
