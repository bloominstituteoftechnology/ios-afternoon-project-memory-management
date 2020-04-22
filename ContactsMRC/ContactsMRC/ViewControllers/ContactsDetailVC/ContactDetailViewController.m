//
//  ContactDetailViewController.m
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

- (IBAction)saveTapped:(UIBarButtonItem *)sender {
}



- (void)dealloc {
    [_emailTextField release];
    [_nameTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
