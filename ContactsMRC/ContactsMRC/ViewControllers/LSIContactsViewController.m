//
//  LSIContactsViewController.m
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import "LSIContactsViewController.h"
#import "LSIContact.h"
@interface LSIContactsViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *telephoneTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *editButton;
@property (retain, nonatomic) IBOutlet UIButton *saveButton;

@property (nonatomic)BOOL contactUpdated;

@end

@implementation LSIContactsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contact == nil) {
        self.contactUpdated = NO;
        [self.editButton setEnabled:NO];
        
    } else {
        [self.editButton setEnabled:YES];
        self.contactUpdated = YES;
        [self updateViews];
    }
    // Do any additional setup after loading the view.
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
        LSIContact *newContact = [[[LSIContact alloc]
                                   initWithName:self.nameTextField.text emailAddress:self.emailAddressTextField.text
                                   telephone:self.telephoneTextField.text] autorelease];
        
        [self.contactController addContacts:newContact];
        
        [self.navigationController popViewControllerAnimated:true];
        
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
    [self.telephoneTextField setUserInteractionEnabled:editing];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_telephoneTextField release];
    [_editButton release];
    [_saveButton release];
    [super dealloc];
}

@end
