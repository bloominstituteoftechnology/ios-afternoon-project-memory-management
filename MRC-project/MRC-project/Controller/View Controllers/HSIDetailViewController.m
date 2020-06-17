//
//  HSIDetailViewController.m
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import "HSIDetailViewController.h"
#import "HSIContact.h"

@interface HSIDetailViewController ()

@end

@implementation HSIDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"name: %@", self.contact.name);
}

- (void)dealloc
{
    [_contact release];
    [super dealloc];
}


@end
