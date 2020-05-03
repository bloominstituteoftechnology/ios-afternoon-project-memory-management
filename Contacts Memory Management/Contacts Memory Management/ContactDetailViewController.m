//
//  ContactDetailViewController.m
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *editButton;


@end

@implementation ContactDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)dealloc
{
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [_editButton release];
    [super dealloc];
}


- (IBAction)editButtonTapped:(id)sender
{
    
}


@end
