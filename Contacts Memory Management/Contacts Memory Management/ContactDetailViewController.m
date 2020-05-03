//
//  ContactDetailViewController.m
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "Contact.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *editOrSaveButton;


@end

@implementation ContactDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.phoneTextField.text = self.contact.phoneNumber;
        self.emailTextField.text = self.contact.email;
        self.editOrSaveButton.title = @"Edit";
    } else {
        self.editOrSaveButton.title = @"Save";
    }
}

- (void)dealloc
{
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [_editOrSaveButton release];
    [super dealloc];
}


- (IBAction)editOrSaveButtonTapped:(id)sender
{
    
}


@end
