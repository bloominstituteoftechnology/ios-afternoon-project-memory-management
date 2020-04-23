//
//  EGCViewController.m
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import "EGCViewController.h"

@interface EGCViewController ()

@end

@implementation EGCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
//    self.view.subviews // owns the memory (collection) +1
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [self.nameTextField removeFromSuperview]; // 2 -> 1
//    [self.view addSubview:self.nameTextField]; // 1 -> 2
}

- (void)updateViews {
    if (self.contact != nil) {
        self.title = @"Update Contact";
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber;
    } else {
        self.title = @"New Contact";
    }
}

- (IBAction)savePressed:(id)sender {
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *phone = self.phoneTextField.text;
    
    if (self.contact != nil) {
        [self.contactController updateContact:self.contact withName:name email:email phone:phone];
    } else {
        EGCContact *newContact = [[EGCContact alloc] initWithName:name email:email phone:phone]; // +1
        [self.contactController addContact:newContact]; // 2
        [newContact release]; // 1
    }
    [self.navigationController popToRootViewControllerAnimated:true];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [_contact release];
    [_contactController release];
    [super dealloc];
}

@end
