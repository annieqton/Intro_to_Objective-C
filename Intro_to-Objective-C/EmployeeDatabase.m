//
//  EmployeeDatabase.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()  //use interface with class extension to access a private method

@property(strong, nonatomic) NSArray *employees;

@end




@implementation EmployeeDatabase

+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;  //nil out a previous shared because we had one that was created globally.
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{  //^{} is block syntax
        shared = [[[self class] alloc]init];  //self here is EmployeeDatabase.   we use self here in order to subclass
    });
    return shared;
}


//MARK: Helper methods
-(NSURL *)documentsDirectory{
    
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;

}

-(NSURL *)archiveURL{
    
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
    
    
    
}

@end
