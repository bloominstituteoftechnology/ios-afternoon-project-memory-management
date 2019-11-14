//
//  CDBContactDetailViewController.m
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import "CDBContactDetailViewController.h"
#import "CDBContact.h"
#import "CDBContactController.h"

@interface CDBContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation CDBContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.text = self.contact.name;
    self.emailTextField.text = self.contact.email;
    self.phoneTextField.text = self.contact.phoneNumber;
}

- (IBAction)save:(id)sender {
    if (self.nameTextField != nil && self.emailTextField != nil && self.phoneTextField != nil) {
        [self.contactController addContactWithName:self.nameTextField.text withEmail:self.emailTextField.text withPhoneNumber:self.phoneTextField.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    _nameTextField = nil;
    [_emailTextField release];
    _emailTextField = nil;
    [_phoneTextField release];
    _phoneTextField = nil;
    [_contact release];
    _contact = nil;
    [_contactController release];
    _contactController = nil;
    [super dealloc];
}

@end
