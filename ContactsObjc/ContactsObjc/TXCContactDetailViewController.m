//
//  TXCContactDetailViewController.m
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import "TXCContactDetailViewController.h"
#import "TXCContact.h"
#import "TXCContactsController.h"

@interface TXCContactDetailViewController ()

@end

@implementation TXCContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateViews];
}

- (void)setContact:(TXCContact *)contact {
    if (contact != _contact) {
        _contact = contact;
        [self updateViews];
    }
}

- (void)updateViews {
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (!self.isViewLoaded || !self.contact) { return; }
        self.title = self.contact.name;
        self.nameLabel.text = self.contact.name;
        self.emailLabel.text = self.contact.email;
        self.phoneLabel.text = self.contact.phone;
    });
    
}

- (void)dealloc {
    [_nameLabel release];
    [_emailLabel release];
    [_phoneLabel release];
    [_nameLabel release];
    [_nameLabel release];
    [super dealloc];
}
@end
