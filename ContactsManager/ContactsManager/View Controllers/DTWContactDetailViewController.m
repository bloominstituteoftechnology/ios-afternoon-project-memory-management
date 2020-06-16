//
//  DTWContactDetailViewController.m
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import "DTWContactDetailViewController.h"
#import "DTWContactController.h"
#import "DTWContact.h"

@interface DTWContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation DTWContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *name = self.nameTextField.text;
    if (!name || [name isEqualToString:@""]) return;
    
    NSString *email = self.emailTextField.text;
    NSString *phoneNumber = self.phoneNumberTextField.text;
    
    if (!self.contact) {
        [self.contactController createContactWithName:name email:email phoneNumber:phoneNumber];
    } else {
        [self.contactController updateContact:self.contact withName:name email:email phoneNumber:phoneNumber];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_contact release];
    [_contactController release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}
@end
