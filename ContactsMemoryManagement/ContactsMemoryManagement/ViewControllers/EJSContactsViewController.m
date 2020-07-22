//
//  EJSContactsViewController.m
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import "EJSContactsViewController.h"
#import "EJSContact.h"


@interface EJSContactsViewController ()

@property (nonatomic, retain) IBOutlet UITextField *nameTextField;
@property (nonatomic, retain) IBOutlet UITextField *emailAddressTextField;
@property (nonatomic, retain) IBOutlet UITextField *telephoneTextField;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *editContactsButton;
@property (nonatomic, retain) IBOutlet UIButton *saveContactsButton;

@property (nonatomic)BOOL contactUpdated;

@end

@implementation EJSContactsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contact == nil) {
        self.contactUpdated = NO;
        [self.editContactsButton setEnabled:NO];
    } else {
        [self.editContactsButton setEnabled:YES];
        self.contactUpdated = YES;
        [self updateViews];
    }
}

- (void)updateViews {
    if (self.contactUpdated == YES) {
        [self.nameTextField setUserInteractionEnabled:self.isEditing];
        [self.emailAddressTextField setUserInteractionEnabled:self.isEditing];
        [self.telephoneTextField setUserInteractionEnabled:self.isEditing];
        
        self.nameTextField.text = self.contact.name;
        self.emailAddressTextField.text = self.contact.emailAddress;
        self.telephoneTextField.text = self.contact.telephone;
    }
}

- (IBAction)saveButtonTapped:(UIButton *)sender {
    if (self.contactUpdated == YES && self.isEditing == YES) {
            
            self.contact.name = self.nameTextField.text;
            self.contact.emailAddress = self.emailAddressTextField.text;
            self.contact.telephone = self.telephoneTextField.text;
            
            [self.navigationController popViewControllerAnimated:true];
        } else if (self.contactUpdated == NO) {
            EJSContact *newContact = [[[EJSContact alloc]
                                       initWithName:self.nameTextField.text emailAddress:self.emailAddressTextField.text
                                       telephone:self.telephoneTextField.text] autorelease];
            
            [self.contactController addContacts:newContact];
            
            [self.navigationController popViewControllerAnimated:true];
            
        }
    }

    - (IBAction)editButtonTapped:(id)sender {
        if (self.isEditing == NO) {
            [self setEditing:YES animated:YES];
            [self.editContactsButton setTitle:@"Done"];
        }else if (self.isEditing == YES) {
            [self setEditing:NO animated:YES];
            [self.editContactsButton setTitle:@"Edit"];
        }
    }

    - (void)setEditing:(BOOL)editing animated:(BOOL)animated {
        [super setEditing:editing animated:animated];
        [self.nameTextField setUserInteractionEnabled:editing];
        [self.emailAddressTextField setUserInteractionEnabled:editing];
        [self.telephoneTextField setUserInteractionEnabled:editing];
    }

    - (void)dealloc {
        [_nameTextField release];
        [_emailAddressTextField release];
        [_telephoneTextField release];
        [_editContactsButton release];
        [_saveContactsButton release];
        [super dealloc];
    }
@end
