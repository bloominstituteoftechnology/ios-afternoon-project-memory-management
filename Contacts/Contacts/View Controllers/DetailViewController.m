//
//  DetailViewController.m
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)dealloc {
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [super dealloc];
}
@end
