//
//  ViewControllerNew.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "ViewControllerNew.h"
#import "EmployeeDatabase.h"


@interface ViewControllerNew () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *employeeTable;

@end



@implementation ViewControllerNew

- (void)viewDidLoad {
    
    [super viewDidLoad];
    

    self.employeeTable.dataSource = self;
    
    
    if([[EmployeeDatabase shared] count] == 0) {
    
        Employee *newEmp = [[Employee alloc] initWithFirstName:@"Annie"
                                                      lastName:@"Bee"
                                                        andAge:@10
                                                  emailAddress:@"annie@mail.com"
                                                 yearsEmployed:@25
                                                    andManager:@"Bella"];
       
        [[EmployeeDatabase shared] add:newEmp];
    }
    
    [self.employeeTable reloadData];
}

    


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[EmployeeDatabase shared] allEmployees] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    Employee *employee = [[EmployeeDatabase shared] employeeAtIndex:indexPath.row];
    
    cell.textLabel.text = employee.firstName;
    
    return cell;
}


@end






