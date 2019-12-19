//
//  DetailViewController.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "DetailViewController.h"
#import "JLRContact.h"
#import "JLRContactController.h"

@interface DetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (self.contact) {
        self.title = self.contact.name;
        self.nameTextField.text = self.contact.name;
        self.phoneTextField.text = self.contact.phone;
        self.emailTextField.text = self.contact.email;
    } else {
        self.title = @"Add New Contact";
    }
}

- (IBAction)saveContact:(UIBarButtonItem *)sender {
    NSString *name = self.nameTextField.text;
    NSString *phone = self.phoneTextField.text;
    NSString *email = self.emailTextField.text;
    
    if (self.contact) {
        [self.controller updateContact:self.contact withName:name phone:phone andEmail:email];
    } else {
        [self.controller createContactWithName:name phone:phone email:email];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [super dealloc];
}
@end
