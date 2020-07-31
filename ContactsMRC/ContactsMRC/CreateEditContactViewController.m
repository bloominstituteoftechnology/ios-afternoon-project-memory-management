//
//  CreateEditContactViewController.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "CreateEditContactViewController.h"
#import "LSIContact.h"
#import "LSIContactController.h"

@interface CreateEditContactViewController ()

// MARK: - Outlets
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

-(void)updateViews;

@end

@implementation CreateEditContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contact) {
        [self updateViews];
    } else {
        self.title = [[NSString alloc] initWithString:@"Add new Artist"];
    }
}

// MARK: - Private functions
- (void)updateViews {
    if (self.contact) {
        self.title = self.contact.name;
        self.nameTextField.text = self.contact.name;
        self.phoneNumberTextField.text = self.contact.phonenumber;
        self.emailAddressTextField.text = self.contact.email;
    }
}


// MARK: - Actions
- (IBAction)editButtonTapped:(id)sender {
    
}

- (IBAction)saveButtonTapped:(id)sender {
    NSLog(@"Save button tapped.");
    LSIContact *contact = [[LSIContact alloc]initWithName:self.nameTextField.text phonenumber: self.phoneNumberTextField.text email:self.emailAddressTextField.text];
    
    [self.controller addContact: contact];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}






@end
