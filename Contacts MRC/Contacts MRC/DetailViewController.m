//
//  DetailViewController.m
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import "DetailViewController.h"
#import "Contact.h"

@interface DetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (_contact) {
        _nameTextField.text = _contact.name;
        _emailTextField.text = _contact.email;
        _phoneTextField.text = _contact.phone;
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
