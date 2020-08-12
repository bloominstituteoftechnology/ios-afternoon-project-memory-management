//
//  ContactDetailViewController.m
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "Contact.h"

@interface ContactDetailViewController ()

//IBOutlets
@property (retain, nonatomic) IBOutlet UITextField *fullNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *topLeftButton;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.fullNameTextField.text = self.contact.fullName;
    self.emailAddressTextField.text = self.contact.emailAddress;
    self.phoneNumberTextField.text = self.contact.phoneNumber;
}



- (void)dealloc {
    [_fullNameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [_topLeftButton release];
    [super dealloc];
}


- (IBAction)saveButtonTapped:(id)sender {
    if (self.contact)
    {
        [self.contact setValue:_fullNameTextField.text forKey:@"fullName"];
        [self.contact setValue:_emailAddressTextField.text forKey:@"emailAddress"];
        [self.contact setValue:_phoneNumberTextField.text forKey:@"phoneNumber"];
        
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        Contact *contact = [[Contact alloc] initWithFullName:_fullNameTextField.text emailAddress:_emailAddressTextField.text phoneNumber:_phoneNumberTextField.text];
        // need a controller to add new contact
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}


@end
