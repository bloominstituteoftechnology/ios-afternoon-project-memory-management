//
//  PNCContactDetailViewController.m
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCContactDetailViewController.h"
#import "PNCContact.h"

@interface PNCContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;




@end

@implementation PNCContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	if (self.contact) {
		self.nameTextField.text = self.contact.name;
		self.emailTextField.text = self.contact.email;
		self.phoneTextField.text = self.contact.phoneNumber;
}
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
	[_nameTextField release];
	[_emailTextField release];
	[_phoneTextField release];
	[_emailTextField release];
	[_phoneTextField release];
	[super dealloc];
}
@end
