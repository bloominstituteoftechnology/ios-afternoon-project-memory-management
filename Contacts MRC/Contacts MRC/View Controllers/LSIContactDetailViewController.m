//
//  LSIContactDetailViewController.m
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import "LSIContactDetailViewController.h"
#import "LSIContact.h"

@interface LSIContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation LSIContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contact) {
        [self setTitle:[self.contact name]];
        
        [self.nameTextField setText:[self.contact name]];
        [self.phoneTextField setText:[self.contact phone]];
        [self.emailTextField setText:[self.contact email]];
    } else {
        [self setTitle:@"New Contact"];
    }
}

- (void)setContact:(LSIContact *)contact {
    [_contact release];
    _contact = [contact retain];
}

- (void)setController:(LSIContactController *)controller {
    [_controller release];
    _controller = [controller retain];
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
    [_contact release];
    _contact = nil;
    [_controller release];
    _controller = nil;
    
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [super dealloc];
}

@end
