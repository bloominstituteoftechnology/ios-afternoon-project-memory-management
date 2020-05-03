//
//  ContactDetailViewController.m
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "Contact.h"
#import "ContactsTableViewController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *editOrSaveButton;

- (BOOL)textFieldsAreEmpty;

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
    [self.contact release];
    [super dealloc];
}


- (IBAction)editOrSaveButtonTapped:(id)sender
{
    if (self.contact && !self.textFieldsAreEmpty) {
        self.contact.name = self.nameTextField.text;
        self.contact.phoneNumber = self.phoneTextField.text;
        self.contact.email = self.emailTextField.text;
        
        [self.contact autorelease];
        [self.delegate newContactAdded:self.contact];
        [self.navigationController popViewControllerAnimated:YES];
        
    } else if (!self.textFieldsAreEmpty) {
        NSString *name = self.nameTextField.text;
        NSString *phoneNumber = self.phoneTextField.text;
        NSString *email = self.emailTextField.text;
        
        Contact *contact = [[Contact alloc] initWithName:name phoneNumber:phoneNumber email:email];
        [contact autorelease];
        
        [self.delegate newContactAdded:contact];
        [self.navigationController popViewControllerAnimated:YES];
        
    } else {
        return;
    }
}

- (BOOL)textFieldsAreEmpty
{
    if (self.nameTextField.text
        && self.nameTextField.text.length > 0
        && self.phoneTextField.text
        && self.phoneTextField.text.length > 0
        && self.emailTextField.text
        && self.emailTextField.text.length > 0)
    {
        return NO;
    } else {
        return YES;
    }
}


@end
