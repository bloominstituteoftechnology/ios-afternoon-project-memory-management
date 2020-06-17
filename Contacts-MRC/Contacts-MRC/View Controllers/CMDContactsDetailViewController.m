//
//  CMDContactsDetailViewController.m
//  Contacts-MRC
//
//  Created by Chris Dobek on 6/17/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

#import "CMDContactsDetailViewController.h"
#import "CMDContactsController.h"
#import "CMDContact.h"

@interface CMDContactsDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;

- (void)saveContact;

@end

@implementation CMDContactsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (self.contact) {
        self.title = @"Edit Contact";
        [self.nameTextField setText:self.contact.name];
        [self.emailTextField setText:self.contact.email];
        [self.phoneNumberTextField setText:self.contact.number];
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [self saveContact];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)saveContact {
    
    NSString *nameString = self.nameTextField.text;
    NSString *emailString = self.emailTextField.text;
    NSString *numberString = self.phoneNumberTextField.text;
    
    if (nameString.length > 0 && emailString.length > 0 && numberString.length > 0 ) {
        if (self.contact) {
            [self.contact setName:nameString];
            [self.contact setEmail:emailString];
            [self.contact setNumber :numberString];
        } else {
            CMDContact *contact = [CMDContact contactWithName:nameString number:numberString email:emailString ];
            [self.contactsController addContact: contact];
        }
    }
}

- (void)dealloc {
    [_contactsController release];
    _contactsController = nil;
    [_contact release];
    _contact = nil;
    [super dealloc];
}

@end
