//
//  EmployeeDatabase.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()  //use interface with class extension to access a private method

@property(strong, nonatomic) NSMutableArray *employees;

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

-(NSInteger)count{
    return [_employees count];
}

-(NSArray *)allEmployees{
    return _employees;
}

-(Employee *)employeeAtIndex:(int)index{
    return _employees[index];
    
}

-(void)add:(Employee *)employee{
     [_employees addObject:employee];
    
}

-(void)remove:(Employee *)employee{
    [_employees removeObject:employee];
}

-(void)removeEmployeeAtIndex:(int)index{
    [_employees removeObjectAtIndex:index];
}

-(void)removeAllEmployees{
    [_employees removeAllObjects];
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
