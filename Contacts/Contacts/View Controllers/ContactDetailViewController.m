//
//  ContactDetailViewController.m
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(id)sender {
}

- (IBAction)editButtonTapped:(id)sender {
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}
@end
