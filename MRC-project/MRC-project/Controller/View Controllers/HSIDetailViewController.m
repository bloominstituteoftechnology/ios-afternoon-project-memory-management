//
//  HSIDetailViewController.m
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import "HSIDetailViewController.h"
#import "HSIContact.h"
#import "HSIContactTableViewController.h"

@interface HSIDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UIButton *doneButton;

- (IBAction)doneButtonTapped:(id)sender;


@end

@implementation HSIDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.text = self.contact.name;
    self.emailTextField.text = self.contact.emailAddress;
    self.phoneTextField.text = self.contact.phoneNumber;
}

- (void)dealloc
{
    [_contact release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [_doneButton release];
    [super dealloc];
}


- (IBAction)doneButtonTapped:(id)sender {
    if (self.contact) {
        [self.contact setValue:_nameTextField.text forKey:@"name"];
        [self.contact setValue:_emailTextField.text forKey:@"emailAddress"];
        [self.contact setValue:_phoneTextField.text forKey:@"phoneNumber"];
        [self.delegate.tableView reloadData];
        [self dismissViewControllerAnimated:true completion:nil];
    } else {
        HSIContact *contact = [[HSIContact alloc] initWithName:_nameTextField.text emailAddress:_emailTextField.text phoneNumber:_phoneTextField.text];
        [self.delegate.contacts addObject:contact];
        [self.delegate.tableView reloadData];
        [self dismissViewControllerAnimated:true completion:nil];
    }

}
@end
