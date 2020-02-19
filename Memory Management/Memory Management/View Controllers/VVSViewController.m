//
//  VVSViewController.m
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import "VVSViewController.h"

@interface VVSViewController ()

@end

@implementation VVSViewController

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
        VVSContact *newContact = [[VVSContact alloc] initWithName:name email:email phone:phone];
        [self.contactController addContact:newContact];
    }
    
    [self.navigationController popToRootViewControllerAnimated:true];
    
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
