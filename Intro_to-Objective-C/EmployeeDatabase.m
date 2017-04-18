//
//  EmployeeDatabase.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "EmployeeDatabase.h"

@implementation EmployeeDatabase


//MARK: Helper methods
-(NSURL *)documentsDirectory{
    
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;

}

-(NSURL *)archiveURL{
    
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
    
    
    
}

@end
