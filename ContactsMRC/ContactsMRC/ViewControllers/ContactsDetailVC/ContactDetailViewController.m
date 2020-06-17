//
//  ContactDetailViewController.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "CDGContact.h"
#import "CDGContactController.h"

//@class CDGContactController;
//@class CDGContact;

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;


@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_contact) {
        self.nameTextField.text = _contact.name;
        self.emailTextField.text = _contact.emailAddress;
        self.phoneTextField.text = _contact.phoneNumber;
    } else {
        self.title = @"Add New Contact";
    }
}

- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    if(_nameTextField.hasText &&
       _emailTextField.hasText &&
       _phoneTextField.hasText) {
        [self.contactController createContactWithName:_nameTextField.text
                                                phone:_phoneTextField.text
                                                email:_emailTextField.text];
        [self.navigationController popViewControllerAnimated:YES];
    };
}



- (void)dealloc {
    [_emailTextField release];
    [_nameTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
