//
//  SKSContactsDetailViewController.m
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SKSContactsDetailViewController.h"
#import "SKSContactsController.h"
#import "SKSContact.h"

@interface SKSContactsDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@end

@implementation SKSContactsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    if (self.contact) {
        self.title = @"Edit Contact";
        [self.nameTextField setText:self.contact.name];
        [self.emailTextField setText:self.contact.email];
        [self.numberTextField setText:self.contact.number];
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_contactsController release];
    _contactsController = nil;
    [_contact release];
    _contact = nil;
    [super dealloc];
}

@end
