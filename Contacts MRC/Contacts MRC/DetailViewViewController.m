//
//  DetailViewViewController.m
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import "DetailViewViewController.h"

@interface DetailViewViewController ()

@end

@implementation DetailViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setContact:(HLOContact *)contact {
    if (_contact != contact) {
        [_contact dealloc];
        _contact = [contact retain];
    }
}

- (void)setContactController:(HLOContactController *)contactController {
    if (_contactController != contactController) {
        [_contactController dealloc];
        _contactController = [contactController retain];
    }
}
@end
