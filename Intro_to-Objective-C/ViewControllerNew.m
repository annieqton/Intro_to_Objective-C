//
//  ViewControllerNew.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "ViewControllerNew.h"
#import "EmployeeDatabase.h"
#import "Person.h"

@interface ViewControllerNew () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *employeeTable;



@end



@implementation ViewControllerNew

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.employeeTable.dataSource = self;
    self.employeeTable.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTable) name:@"reloadData" object:nil];
    
    
    
// FOR LAB TODAY - ARC turn off for ViewController
//    Person.newPerson = [[Person alloc] init];
//
//    [newPerson retain];  //shows the memory size 16 bits
    
}


-(void)reloadTable{
        [self.employeeTable reloadData];
}


//implement swipe to delete
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(editingStyle == UITableViewCellEditingStyleDelete){
        
        [[EmployeeDatabase shared] removeEmployeeAtIndex:(int)indexPath.row];
        
        [self.employeeTable reloadData];
    }
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[EmployeeDatabase shared] allEmployees] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    Employee *employee = [[EmployeeDatabase shared] employeeAtIndex:(int)indexPath.row];
    
    cell.textLabel.text = employee.firstName;
    
    return cell;
}


@end






