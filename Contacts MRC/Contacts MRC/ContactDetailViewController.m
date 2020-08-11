//
//  ContactDetailViewController.m
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *contactNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactEmailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactPhoneNumberTextField;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    [_contactNameTextField release];
    [_contactEmailAddressTextField release];
    [_contactPhoneNumberTextField release];
    [super dealloc];
}
@end
