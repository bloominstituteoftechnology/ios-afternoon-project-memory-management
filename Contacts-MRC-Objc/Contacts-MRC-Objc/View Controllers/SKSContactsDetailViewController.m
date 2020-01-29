//
//  SKSContactsDetailViewController.m
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSContactsDetailViewController.h"
#import "SKSContactsController.h"
#import "SKSContact.h"

@interface SKSContactsDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

- (void)saveContact;

@end

@implementation SKSContactsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (self.contact) {
        self.title = @"Edit Contact";
        [self.nameTextField setText:self.contact.name];
        [self.emailTextField setText:self.contact.email];
        [self.numberTextField setText:self.contact.number];
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [self saveContact];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)saveContact {

    NSString *nameString = self.nameTextField.text;
    NSString *emailString = self.emailTextField.text;
    NSString *numberString = self.numberTextField.text;

    if (nameString.length > 0 && emailString.length > 0 && numberString.length > 0 ) {
        if (self.contact) {
            [self.contact setName:nameString];
            [self.contact setEmail:emailString];
            [self.contact setNumber:numberString];
        } else {
            SKSContact *contact = [SKSContact contactWithName:nameString email:emailString number:numberString];
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
