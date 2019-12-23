//
//  HSVContactDetailViewController.m
//  Contacts MRC
//
//  Created by Hector Steven on 7/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import "HSVContactDetailViewController.h"

@interface HSVContactDetailViewController ()

@end

@implementation HSVContactDetailViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)addUpdateButtonPressed:(id)sender {
	printf("the button was pressed");
	
}


- (void)dealloc {
	[_namTextField release];
	[_emailTextField release];
	[_phoneNumberTextField release];
	[_addUpdateButton release];
	[super dealloc];
}


@end
