//
//  NSObject+StringManipulation.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "NSObject+StringManipulation.h"

@implementation NSObject (StringManipulation)


//Create a cateory of NSString. Extend NSString's functionality to have a instance method that returns an array of the words contained in self.

NSString *str = @"abcdefghij12345678910";
NSArray *arr = nil;

-(NSArray *)returnArrayOfWords{
    
    NSArray *arr = [str componentsSeparatedByString:@" "];
    
    for (int i =0; i<[arr count]; i++) {
        NSLog(@"%@", arr);
    }
    
    return 0;
}


//Create another method in the same category that is a class method that takes in a NSString and returns the same NSString but reversed.


-(NSString *)reversedString{
    
    NSMutableString * reversedString = [NSMutableString stringWithCapacity: [str length]];
    

    [str enumerateSubstringsInRange:NSMakeRange(0, [str length]) options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences) usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) { [reversedString appendString:substring];
    }];
    
    NSLog(@"%@", str);
    
    return 0;
}


@end
