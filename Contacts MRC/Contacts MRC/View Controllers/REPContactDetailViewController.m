//
//  ViewController.m
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPContactDetailViewController.h"
#import "REPContactController.h"
#import "REPContact.h"

@interface REPContactDetailViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *nameTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *emailTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation REPContactDetailViewController

- (void)setContact:(REPContact *)contact {
	_contact = contact;
	[self updateViews];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)updateViews {
	[self loadViewIfNeeded];
	if (self.contact) {
		self.nameTextField.text = self.contact.name;
		self.emailTextField.text = self.contact.email;
		self.phoneTextField.text = self.contact.phone;
		self.navigationItem.title = self.contact.name;
	}
}

- (IBAction)doneButtonPressed:(UIBarButtonItem *)sender {
	NSString *name = self.nameTextField.text;
	NSString *email = self.emailTextField.text;
	NSString *phone = self.phoneTextField.text;

	if (!name) {
		return;
	}

	if (self.contact) {
		[self.contactController updateContact:self.contact withName:name email:email andPhone:phone];
	} else {
		[self.contactController createContactWithName:name email:email andPhone:phone];
	}
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
	[super dealloc];
}

@end
