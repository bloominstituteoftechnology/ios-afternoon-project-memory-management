//
//  JACContactDetailViewController.m
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACContactDetailViewController.h"
#import "JACContactController.h"
#import "JACContact.h"

@interface JACContactDetailViewController ()
@property (retain, nonatomic) IBOutlet UITextField *contactNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactNicknameTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactEmailTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactPhoneNumberTextField;

@end

@implementation JACContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_controller retain];
}


- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    if (_controller) {
        _contact = [[[JACContact alloc] init] retain];
        [_controller addContact:self.contact];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)setContact:(JACContact *)contact {
    [_contact release];
    _contact = contact;
    [_contact retain];
    [self updateViews];
}

- (void)updateViews {
    if (_contact) {
        _contactNameTextField.text = _contact.name;
        _contactNicknameTextField.text = _contact.nickname;
        _contactEmailTextField.text = _contact.email;
        _contactPhoneNumberTextField.text = _contact.phoneNumber;
    }
}


- (void)dealloc {
    [_contactNameTextField release];
    [_contactNicknameTextField release];
    [_contactEmailTextField release];
    [_contactPhoneNumberTextField release];
    [_contact release];
    [_controller release];
    [super dealloc];
}
@end
