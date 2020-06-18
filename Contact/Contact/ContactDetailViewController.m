//
//  ContactDetailViewController.m
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "BRDContact.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@property (nonatomic) BOOL contactHere;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.contact == nil) {
        self.contactHere = NO;
    } else {
        self.contactHere = YES;
        [self updateViews];
    }
}


-(void) updateViews {
    if (self.contactHere == YES) {
        self.nameTextField.text = self.contact.name;
        self.emailAddressTextField.text = self.contact.emailAddress;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    }
}

- (IBAction)saveButtonTapped:(id)sender {
    if ([self.nameTextField.text isEqualToString:@""]) {
        return;
    }
    
    BRDContact *newContact = [[[BRDContact alloc] initWithName:self.nameTextField.text
                                                  emailAddress:self.emailAddressTextField.text
                                                   phoneNumber:self.phoneNumberTextField.text] autorelease];
    [self.contactController addContact:newContact];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [_saveButton release];
    [super dealloc];
}

@end
