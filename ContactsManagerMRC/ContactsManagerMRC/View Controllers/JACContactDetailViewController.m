//
//  JACContactDetailViewController.m
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import "JACContactDetailViewController.h"

@interface JACContactDetailViewController ()
@property (retain, nonatomic) IBOutlet UITextField *contactNameTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactNicknameTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactEmailTextField;
@property (retain, nonatomic) IBOutlet UITextField *contactPhoneNumberTextField;

@end

@implementation JACContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    
}


- (void)dealloc {
    [_contactNameTextField release];
    [_contactNicknameTextField release];
    [_contactEmailTextField release];
    [_contactPhoneNumberTextField release];
    [super dealloc];
}
@end
