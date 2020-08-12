//
//  DetailViewController.m
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import "DetailViewController.h"
#import "Contact.h"
#import "ContactController.h"

@interface DetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

//@property (nonatomic) NSInteger *indexPath;

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
    
    if ([self.nameTextField.text isEqualToString:@""]) return;
    
    if (!self.contact) {
        Contact *newContact = [[[Contact alloc] initWithName:self.nameTextField.text
                                                       email:self.emailTextField.text
                                                       phone:self.phoneTextField.text] autorelease];
        [self.contactController addContact:newContact];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self.contactController updateContactAtIndex:(self.indexPath.row)
                                            withName:self.nameTextField.text
                                               email:self.emailTextField.text
                                               phone:self.phoneTextField.text];
        NSLog(@"update Contact is at IndexPath: %ld", (long)self.indexPath.row);
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
