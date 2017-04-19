//
//  AddEmployeeViewController.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/19/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "AddEmployeeViewController.h"

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SaveEmployeeDetails:(id)sender {
    
    
    
}

- (IBAction)cancelEmployeeDetails:(id)sender {
    
    
}


@end
