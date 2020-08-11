//
//  ContactDetailViewController.m
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *contactNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactEmailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactPhoneNumberTextField;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

- (void)updateViews
{
    if (!self.isAddContact) {
        self.contactNameTextField.text = self.contact.contactName;
        self.contactEmailAddressTextField.text = self.contact.emailAddress;
        self.contactPhoneNumberTextField.text = self.contact.phoneNumber;
    } else {
        self.contactNameTextField.text = @"";
        self.contactEmailAddressTextField.text = @"";
        self.contactPhoneNumberTextField.text = @"";
    }
}

- (IBAction)saveContactTapped:(id)sender {
    if (self.isAddContact) {
        Contact *newContact = [[Contact alloc] initWithContactName:self.contactNameTextField.text
                                                    emailAdress:self.contactEmailAddressTextField.text
                                                    phoneNumber:self.contactPhoneNumberTextField.text];
        [self.contactController addContact:newContact];
        
        [newContact release];
    } else {
        self.contact.contactName = self.contactNameTextField.text;
        self.contact.emailAddress = self.contactEmailAddressTextField.text;
        self.contact.phoneNumber = self.contactPhoneNumberTextField.text;
        
//        [self.contact release];
    }
    
    [self.navigationController popViewControllerAnimated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_contactNameTextField release];
    [_contactEmailAddressTextField release];
    [_contactPhoneNumberTextField release];
    [_contact release];
    [_contactController release];
    [super dealloc];
}
@end
