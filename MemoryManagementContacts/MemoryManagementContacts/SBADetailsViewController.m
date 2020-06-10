//
//  SBADetailsViewController.m
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import "SBADetailsViewController.h"
#import "SBAContactController.h"
#import "SBAContact.h"

@interface SBADetailsViewController ()
//IBOutlets
@property (retain, nonatomic) IBOutlet UITextField *nameField;
@property (retain, nonatomic) IBOutlet UITextField *emailField;
@property (retain, nonatomic) IBOutlet UITextField *phoneField;

@end

@implementation SBADetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.contact) {
        self.nameField.text = self.contact.name;
        self.emailField.text = self.contact.email;
        self.phoneField.text = self.contact.phone;
    }
}

 


//IB ACtion Save Button
- (IBAction)saveBtnWasPressed:(UIBarButtonItem *)sender {
    if (self.contact) {
        self.contact.name  = self.nameField.text;
        self.contact.email = self.emailField.text;
        self.contact.phone = self.phoneField.text;
    } else {
        [self.contactController newContactWithName:self.nameField.text email:self.emailField.text phone:self.phoneField.text];
    }
    [self.navigationController popViewControllerAnimated:true];
}


 

- (void)dealloc {
    [_nameField release];
    [_emailField release];
    [_phoneField release];
    [super dealloc];
}
@end
