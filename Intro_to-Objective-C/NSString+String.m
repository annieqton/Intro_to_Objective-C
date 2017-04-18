//
//  NSString+String.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "NSString+String.h"

@implementation NSString (String)




//Create a cateory of NSString. Extend NSString's functionality to have a instance method that returns an array of the words contained in self.

-(NSArray *)returnArrayOfWords{
    
    return [self componentsSeparatedByString:@" "];
}



//Create another method in the same category that is a class method that takes in a NSString and returns the same NSString but reversed.


-(NSString *)reversedString{  //change - to +

     NSMutableString *reversedString = [NSMutableString stringWithCapacity: [self length]];  //replace self with ViewController
    
    [reversedString enumerateSubstringsInRange:NSMakeRange(0, [reversedString length]) options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences) usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) { [reversedString appendString:substring];
    }];
    
    NSLog(@"%@", reversedString);

    return reversedString;
}


@end
