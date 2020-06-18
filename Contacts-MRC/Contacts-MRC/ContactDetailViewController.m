//
//  ContactDetailViewController.m
//  Contacts-MRC
//
//  Created by Hunter Oppel on 6/17/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "Contact.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *editButton;

- (void)updateViews;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

- (void)dealloc
{
    [_contact release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [_editButton release];
    [_delegate release];
    [super dealloc];
}

- (void)updateViews
{
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    } else {
        self.editButton.tintColor = [UIColor clearColor];
        self.editButton.enabled = NO;
    }
}

- (IBAction)saveContact:(id)sender {
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *phoneNumber = self.phoneNumberTextField.text;
    
    Contact *newContact = nil;
    
    if (name.length > 0 || email.length > 0 || phoneNumber.length > 0) {
        newContact = [[Contact alloc] initWithName:name email:email phoneNumber:phoneNumber];
        [newContact autorelease];
    } else {
        return;
    }
    
    [self.delegate didChangeContactsWithContact:newContact oldContact:self.contact];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
