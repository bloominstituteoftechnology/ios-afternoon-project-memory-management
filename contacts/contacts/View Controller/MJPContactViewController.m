//
//  MJPContactViewController.m
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import "MJPContactViewController.h"

@interface MJPContactViewController ()

@end

@implementation MJPContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (self.contact !=nil) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber;
    } else {
        self.nameTextField.text = nil;
        self.emailTextField.text = nil;
        self.phoneTextField.text = nil;
    }
}

- (IBAction)saveButtonPressed:(id)sender {
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *phone = self.phoneTextField.text;

    if (self.contact != nil) {
        [self.contactController editContact:self.contact withName:name email:email phone:phone];
    } else {
        MJPContact *newContact = [[MJPContact alloc] initWithName:name email:email phone:phone];
        [self.contactController addContact:newContact];
        [newContact release];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [_contactController release];
    [_contact release];

    [super dealloc];
}

@end
