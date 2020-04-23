//
//  ViewController.m
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import "DetailViewController.h"
#import "Contact.h"
#import "ContactController.h"

@interface DetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;



@end

@implementation DetailViewController

- (void)viewDidLoad {
    [self.nameTextField becomeFirstResponder];
    [super viewDidLoad];
    [self updateViews];
}


-(void)updateViews {
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.phoneTextField.text = self.contact.phoneNumber;
        self.emailTextField.text = self.contact.email;
    } else {
        self.nameTextField.text = @"";
        self.phoneTextField.text = @"";
        self.emailTextField.text = @"";
    }
}

- (IBAction)saveTapped:(id)sender {
    if (self.contact) {
        self.contact.name = self.nameTextField.text;
        self.contact.phoneNumber = self.phoneTextField.text;
        self.contact.email = self.emailTextField.text;
    } else {
        Contact *newContact = [[[Contact alloc] initWithName:self.nameTextField.text email:self.emailTextField.text phoneNumber:self.phoneTextField.text]autorelease];
        [self.contactController createContact:newContact];
//        [newContact release];
    }
    
    [self.navigationController popViewControllerAnimated:YES];

}

- (void)dealloc {
    [_contact release];
    [_contactController release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
   
    [super dealloc];
}
@end
