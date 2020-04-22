//
//  EGCViewController.m
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import "EGCViewController.h"

@interface EGCViewController ()

@end

@implementation EGCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    if (self.contact != nil) {
        self.title = @"Update Contact";
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber;
    } else {
        self.title = @"New Contact";
    }
}

- (IBAction)savePressed:(id)sender {
    NSString *name = _nameTextField.text;
    NSString *email = _emailTextField.text;
    NSString *phone = _phoneTextField.text;
    
    if (self.contact != nil) {
        [self.contactController updateContact:[self contact] withName:name email:email phone:phone];
    } else {
        EGCContact *newContact = [[EGCContact alloc] initWithName:name email:email phone:phone];
        [self.contactController addContact:newContact];
        [newContact release];
    }
    [self.navigationController popToRootViewControllerAnimated:true];
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
