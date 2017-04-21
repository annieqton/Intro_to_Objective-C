//
//  AddEmployeeViewController.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/19/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"
#import "Employee.h"

@interface AddEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameInput;
@property (weak, nonatomic) IBOutlet UITextField *lastNameInput;
@property (weak, nonatomic) IBOutlet UITextField *ageInput;
@property (weak, nonatomic) IBOutlet UITextField *emailInput;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployedInput;
@property (weak, nonatomic) IBOutlet UITextField *managerNameInput;


@end



@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

//touch background to dismiss keyboard
- (IBAction)tapBackgroundToDimissKeyboard:(id)sender {
    [self.view endEditing:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SaveEmployeeDetails:(id)sender {
    
    
    Employee *newEmp = [[Employee alloc] initWithFirstName:[_firstNameInput text]
                                                  lastName:[_lastNameInput text]
                                                    andAge:[NSNumber numberWithInt:(int)[_ageInput text]]
                                              emailAddress:[_emailInput text]
                                             yearsEmployed:[NSNumber numberWithInt:(int)[_yearsEmployedInput text]]
                                                andManager:[_managerNameInput text]];
    
    [[EmployeeDatabase shared] add:newEmp];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
}

- (IBAction)cancelEmployeeDetails:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
