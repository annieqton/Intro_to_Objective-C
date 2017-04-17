//
//  Person.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonatomic) NSString *name;

// won't need these. replaced by @property(strong, nonatomic) NSString *name; above
//Name Accessor Methods
//-(NSString *)name;
//-(void)setName:(NSString*)name;

//Instance Method
-(void)walk;

//Class Method
+(void)sayHello;


@end
