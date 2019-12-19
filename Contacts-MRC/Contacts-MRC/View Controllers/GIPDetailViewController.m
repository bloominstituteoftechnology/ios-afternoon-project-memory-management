//
//  GIPDetailViewController.m
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import "GIPDetailViewController.h"
#import "GIPContact.h"
#import "GIPContactController.h"

@interface GIPDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

- (IBAction)saveContact:(id)sender;

- (void)updateViews;

@end

@implementation GIPDetailViewController

- (void)setContact:(GIPContact *)contact {
    _contact = contact;
    [self updateViews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)saveContact:(id)sender {
    NSString *name = [NSString stringWithString:self.nameTextField.text];
    NSString *email = [NSString stringWithString:self.emailTextField.text];
    NSString *phoneNumber = [NSString stringWithString:self.phoneNumberTextField.text];
    
    if (!name || [name isEqualToString:@""] ||
        !email || [email isEqualToString:@""] ||
        !phoneNumber || [phoneNumber isEqualToString:@""]) {
        return;
    }
    
    if (self.contact && self.controller) {
        [self.controller updateContact:self.contact name:name email:email phoneNumber:phoneNumber];
    } else if (self.controller) {
        GIPContact *newContact = [[[GIPContact alloc] initWithName:name email:email phoneNumber:phoneNumber] autorelease];
        [self.controller addContact:newContact];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)updateViews {
    if ([self isViewLoaded]) {
        if (self.contact && self.controller) {
            self.nameTextField.text = self.contact.name;
            self.emailTextField.text = self.contact.email;
            self.phoneNumberTextField.text = self.contact.phoneNumber;
        }
    }
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [_controller release];
    [_contact release];
    [super dealloc];
}
@end
