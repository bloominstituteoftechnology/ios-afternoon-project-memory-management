//
//  CreateEditContactViewController.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "CreateEditContactViewController.h"

@interface CreateEditContactViewController ()

// MARK: - Outlets
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;



@end

@implementation CreateEditContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


// MARK: - Actions
- (IBAction)editButtonTapped:(id)sender {
    
}

- (IBAction)saveButtonTapped:(id)sender {
    
}



- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}






@end
