//
//  ContactDetailViewController.m
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "WAHContact.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@property (nonatomic) BOOL passedContact;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.contact == nil) {
        self.passedContact = NO;
    } else {
        self.passedContact = YES;
        [self updateViews];
    }
}


-(void) updateViews {
    if (self.passedContact == YES) {
        
        self.nameTextField.text = self.contact.name;
        self.emailAddressTextField.text = self.contact.emailAddress;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    }
}

- (IBAction)saveButtonTapped:(id)sender {
    WAHContact *newContact = [[[WAHContact alloc] initWithName:self.nameTextField.text
                                               emailAddress:self.emailAddressTextField.text
                                                phoneNumber:self.phoneNumberTextField.text] autorelease];
    [self.contactController addContact:newContact];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)editButtonTapped:(id)sender {
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}
@end
