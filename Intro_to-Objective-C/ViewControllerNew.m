//
//  ViewControllerNew.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "ViewControllerNew.h"
#import "EmployeeDatabase.h"

@interface ViewControllerNew () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *employeeTable;

@end



@implementation ViewControllerNew

- (void)viewDidLoad {
    
    [super viewDidLoad];
    

    Employee *original = [[Employee alloc] initWithFirstName:@"Kat" lastName:@"Diddly" andAge:@30 emailAddress:@"kat@codefellows.com" yearsEmployed:@2 andManager:@"Dog Boss"];
    
    [[EmployeeDatabase shared] add:original];
    
//    for(Employee *employee in [[EmployeeDatabase shared] allEmployees]){
//        
//        NSLog(@"%@", employee.firstName);
//    }
    

    self.employeeTable.dataSource = self;
    self.employeeTable.delegate = self;

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
    
//    NSLog(employee.firstName);
    
    return cell;
}





@end






