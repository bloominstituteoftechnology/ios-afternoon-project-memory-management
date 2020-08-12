//
//  CreateOrEditViewController.m
//  ContactsMRC
//
//  Created by Chad Parker on 8/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import "CreateOrEditViewController.h"

@interface CreateOrEditViewController ()

#pragma mark - Outlets

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation CreateOrEditViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)dealloc
{
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}


#pragma mark - Actions

- (IBAction)saveContact:(UIBarButtonItem *)sender
{

}

@end
