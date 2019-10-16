//
//  ViewController.m
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "REPContactDetailViewController.h"

@interface REPContactDetailViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *nameTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *emailTextField;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation REPContactDetailViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)doneButtonPressed:(UIBarButtonItem *)sender {
}

- (void)dealloc {
	[super dealloc];
}

@end
