//
//  JDKContactDetailsViewController.m
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import "JDKContactDetailsViewController.h"
#import "JDKContact.h"
#import "JDKContactsController.h"

@interface JDKContactDetailsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;

- (void)saveContact;

@end

@implementation JDKContactDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender
{
    [self saveContact];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)saveContact
{
    NSString *nameString = self.nameTextField.text;
    NSString *emailString = self.emailTextField.text;
    NSString *phoneNumberString = self.phoneNumberTextField.text;
    
    if (self.contact) {
        [self.contact setName:nameString];
        [self.contact setEmail:emailString];
        [self.contact setPhoneNumber:phoneNumberString];
    } else {
        JDKContact *contact = [JDKContact contactWithName:nameString email:emailString phoneNumber:phoneNumberString];
        [self.contactController addContact:contact];
    }
}

- (void)updateViews {
    if (self.contact) {
        self.title = @"Edit Contact";
        [self.nameTextField setText:self.contact.name];
        [self.emailTextField setText:self.contact.email];
        [self.phoneNumberTextField setText:self.contact.phoneNumber];
    } else {
        self.title = @"Add Contact";
    }
}

- (void)dealloc {
    [_contactController release];
//    _contactController = nil;
    
    [_contact release];
//    _contact = nil;
    
    [super dealloc];
}

@end
