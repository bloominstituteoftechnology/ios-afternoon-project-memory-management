//
//  PNCContactDetailViewController.m
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCContactDetailViewController.h"
#import "PNCContact.h"
#import "PNCContactController.h"

@interface PNCContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;




@end

@implementation PNCContactDetailViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	if (self.contact) {
		self.nameTextField.text = self.contact.name;
		self.emailTextField.text = self.contact.email;
		self.phoneTextField.text = self.contact.phoneNumber;
	}
}

- (IBAction)saveButton:(id)sender {
	if (self.nameTextField != nil && self.phoneTextField != nil && self.emailTextField != nil) {
		if (self.contact) {
			[self.controller updateContact:self.contact name:self.nameTextField.text phoneNumber:self.phoneTextField.text email:self.emailTextField.text];
		} else {
			[self.controller addContactWithName:self.nameTextField.text phoneNumber:self.phoneTextField.text email:self.emailTextField.text];
		}
		[self.navigationController popViewControllerAnimated:YES];
	}
}

- (void)dealloc {
	[_nameTextField release];
	_nameTextField = nil;
	[_emailTextField release];
	_emailTextField = nil;
	[_phoneTextField release];
	_phoneTextField = nil;
	[_controller release];
	_controller = nil;
	[_contact release];
	_contact = nil;

	[super dealloc];
}
@end
