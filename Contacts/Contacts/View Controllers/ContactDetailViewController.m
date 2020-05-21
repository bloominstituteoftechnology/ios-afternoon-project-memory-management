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
@property (retain, nonatomic) IBOutlet UIBarButtonItem *editButton;


@property (nonatomic) BOOL passedContact;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.contact == nil) {
        self.passedContact = NO;
        [self.editButton setEnabled:NO];
    } else {
        self.passedContact = YES;
        [self updateViews];
    }
}


-(void) updateViews {
    if (self.passedContact == YES) {
        [self.nameTextField setUserInteractionEnabled:self.isEditing];
        [self.emailAddressTextField setUserInteractionEnabled:self.isEditing];
        [self.phoneNumberTextField setUserInteractionEnabled:self.isEditing];
        self.nameTextField.text = self.contact.name;
        self.emailAddressTextField.text = self.contact.emailAddress;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    }
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.passedContact == YES && self.isEditing == YES) {
        if ([self.nameTextField.text isEqualToString:@""]) {
            return;
        }
        
        self.contact.name = self.nameTextField.text;
        self.contact.emailAddress = self.emailAddressTextField.text;
        self.contact.phoneNumber = self.phoneNumberTextField.text;
        
        [self.navigationController popViewControllerAnimated:YES];
    } else if (self.passedContact == NO) {
        if ([self.nameTextField.text isEqualToString:@""]) {
            return;
        }
        
        WAHContact *newContact = [[[WAHContact alloc] initWithName:self.nameTextField.text
                                                      emailAddress:self.emailAddressTextField.text
                                                       phoneNumber:self.phoneNumberTextField.text] autorelease];
        [self.contactController addContact:newContact];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)editButtonTapped:(id)sender {
    if (self.isEditing == NO) {
        [self setEditing:YES animated:YES];
        [self.editButton setTitle:@"Done"];
    }else if (self.isEditing == YES) {
        [self setEditing:NO animated:YES];
        [self.editButton setTitle:@"Edit"];
    }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    [self.nameTextField setUserInteractionEnabled:editing];
    [self.emailAddressTextField setUserInteractionEnabled:editing];
    [self.phoneNumberTextField setUserInteractionEnabled:editing];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [_editButton release];
    [super dealloc];
}
@end
