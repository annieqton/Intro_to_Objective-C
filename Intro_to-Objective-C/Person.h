//
//  Person.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSNumber *age;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age;

//Instance Method
-(void)walk;

//Class Method
+(void)sayHello;


@end
