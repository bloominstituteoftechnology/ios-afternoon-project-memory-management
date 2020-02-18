//
//  DetailViewController.m
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "DetailViewController.h"
#import "ContactsController.h"
#import "Contact.h"

@interface DetailViewController ()

//MARK: - Outlets

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation DetailViewController

//MARK: - Views

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

//MARK: - Methods

- (void)updateViews
{
    self.title = self.contact.name?: @"New Contact";
    
    if (!self.isViewLoaded || !self.contact) { return; }
    
    self.nameTextField.text = self.contact.name;
    self.emailAddressTextField.text = self.contact.emailAddress;
    self.phoneNumberTextField.text = self.contact.phoneNumber;
}

- (void) setContact:(Contact *)contact
{
    if (_contact != contact) {
        _contact = contact;
        [self updateViews];
    }
}

//MARK: - Actions

- (IBAction)saveButtonTapped:(id)sender {
    
    Contact *contact = [[Contact alloc] initWithName:self.nameTextField.text emailAddress:self.emailAddressTextField.text phoneNumber:self.phoneNumberTextField.text];
    
    [_contactsController addContact:contact];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}
@end
