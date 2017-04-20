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


- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
                      
        if(!_employees) {
            _employees = [[NSMutableArray alloc]init];  //assign the underlined instance varariable without going through a seters
        }
    }
    return self;
}


-(void)save{
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    
    if (success) {
        NSLog(@"saved Employees");
    } else {
        NSLog(@"save Failed!");
    }
}


-(NSInteger)count{
    return [self.employees count];
}


-(NSMutableArray *)allEmployees{
    return self.employees;
}


-(Employee *)employeeAtIndex:(int)index{
    [self save];
    return self.employees[index];
}


-(void)add:(Employee *)employee{
     [self.employees addObject:employee];
     [self save];
}


-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];
}


-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
    [self save];
}


-(void)removeAllEmployees{
    [self.employees removeAllObjects];
    [self save];
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
