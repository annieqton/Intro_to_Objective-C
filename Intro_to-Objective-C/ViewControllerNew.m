//
//  ViewControllerNew.m
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/18/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import "ViewControllerNew.h"

@interface ViewControllerNew ()

@property (weak, nonatomic) IBOutlet UITableView *AllEmployeesListing;
@property (weak, nonatomic) IBOutlet UILabel *EmployeeName;

@end

@implementation ViewControllerNew

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
