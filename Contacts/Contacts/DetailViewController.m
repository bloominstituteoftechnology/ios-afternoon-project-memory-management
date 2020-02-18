//
//  DetailViewController.m
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

//MARK: - Outlets

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;


@end

@implementation DetailViewController

//MARK: - Views

- (void)viewDidLoad {
    [super viewDidLoad];
}

//MARK: - Methods

//MARK: - Actions

- (IBAction)saveButtonTapped:(id)sender {
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}
@end
