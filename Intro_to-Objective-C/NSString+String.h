//
//  NSString+String.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (String)


@property(strong, nonatomic) NSMutableString *str;

//Instance Method
-(NSArray *)returnArrayOfWords;

-(NSMutableString *)reversedString;


@end
