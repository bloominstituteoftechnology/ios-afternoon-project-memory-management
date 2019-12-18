//
//  LSIContactDetailViewController.m
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import "LSIContactDetailViewController.h"
#import "LSIContact.h"
#import "LSIContactController.h"

@interface LSIContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation LSIContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.index != -1) {
        LSIContact *contact = self.controller.contacts[self.index];
        if (contact) {
            [self setTitle:[contact name]];
            
            [self.nameTextField setText:[contact name]];
            [self.phoneTextField setText:[contact phone]];
            [self.emailTextField setText:[contact email]];
        }
    } else {
        [self setTitle:@"New Contact"];
    }
}

- (void)setController:(LSIContactController *)controller {
    [_controller release];
    _controller = [controller retain];
}

- (IBAction)save:(id)sender {
    NSString *name = [self.nameTextField text];
    NSString *phone = [self.phoneTextField text];
    NSString *email = [self.emailTextField text];
    
    if (!name || !phone || !email) {
        return;
    }
    
    if (self.index == -1) {
        LSIContact *contact = [[[LSIContact alloc] initWithName:name phone:phone email:email] autorelease];
        [[self.controller contacts] addObject:contact];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        NSLog(@"Update contact");
    }
}

- (void)dealloc {
    [_controller release];
    _controller = nil;
    
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [super dealloc];
}

@end
