//
//  DetailViewViewController.m
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import "DetailViewViewController.h"
#import "HLOContact.h"
#import "HLOContactController.h"

@interface DetailViewViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameField;
@property (retain, nonatomic) IBOutlet UITextField *emailField;
@property (retain, nonatomic) IBOutlet UITextField *phoneField;

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;
@end

@implementation DetailViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    if (self.contact) {
        self.nameField.text = self.contact.name;
        self.emailField.text = self.contact.email;
        self.phoneField.text = self.contact.phoneNumber;
    }
}

- (void)setContact:(HLOContact *)contact {
    if (_contact != contact) {
        [_contact dealloc];
        _contact = [contact retain];
    }
}

- (void)setContactController:(HLOContactController *)contactController {
    if (_contactController != contactController) {
        [_contactController dealloc];
        _contactController = [contactController retain];
    }
}
- (void)dealloc {
    [_nameField release];
    [_emailField release];
    [_phoneField release];
    [_contact release];
    [_contactController release];
    [super dealloc];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
}
@end
