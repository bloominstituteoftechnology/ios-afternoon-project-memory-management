//
//  LSIContactDetailViewController.m
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSIContactDetailViewController.h"
#import "LSIContact.h"
#import "LSIContactController.h"

@interface LSIContactDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumTextField;

@end

@implementation LSIContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self updateViews];
}

- (IBAction)saveBarButtonTapped:(UIBarButtonItem *)sender {
    [self saveContact];
}

- (void)saveContact {
    
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *phoneNumString = self.phoneNumTextField.text;

    int phoneNum = [phoneNumString intValue];
    
    if (self.contact) {
        
        [self.contactController updateContact:self.contact withName:name email:email andPhoneNum:phoneNum];
        
    } else {
        
        [self.contactController addNewContactWithName:name email:email andPhoneNum:phoneNum];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)updateViews {
    
    if (self.contact) {
        
        NSString *phoneNum = [@(self.contact.phoneNum) stringValue];
        
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneNumTextField.text = phoneNum;
    } else {
        self.title = @"New Contact";
        NSLog(@"Contact was nil");
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
    [_phoneNumTextField release];
    [super dealloc];
}
@end
