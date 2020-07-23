//
//  ContactDetailViewController.m
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "CAMContact.h"
#import "CAMContactController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameField;
@property (retain, nonatomic) IBOutlet UITextField *emailField;
@property (retain, nonatomic) IBOutlet UITextField *phoneField;
@property (retain, nonatomic) IBOutlet UITextField *companyField;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    [_nameField release];
    [_emailField release];
    [_phoneField release];
    [_companyField release];
    [super dealloc];
}
@end
