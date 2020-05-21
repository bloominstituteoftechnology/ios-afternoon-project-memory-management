//
//  MTGViewController.m
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import "MTGViewController.h"
#import "MTGContactController.h"
#import "Contact.h"

@interface MTGViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation MTGViewController

- (void)dealloc
{
    [_contact release];
    [_contactController release];

    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];

    [super dealloc]; // Comes at the end
}

- (IBAction)saveButton:(UIBarButtonItem *)sender {
    if (_contact != nil) {
        // Update
        _contact.name = _nameTextField.text;
        _contact.email = _emailTextField.text;
        _contact.phone = _phoneTextField.text;
    } else {
        // Create
        [_contactController create:_nameTextField.text email:_emailTextField.text phone:_phoneTextField.text];
    }

    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews {
    _nameTextField.text = _contact.name;
    _emailTextField.text = _contact.email;
    _phoneTextField.text = _contact.phone;
}

@end
