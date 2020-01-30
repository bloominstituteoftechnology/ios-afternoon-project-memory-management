//
//  DPRViewController.m
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DPRViewController.h"

@interface DPRViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTF;
@property (retain, nonatomic) IBOutlet UITextField *emailTF;
@property (retain, nonatomic) IBOutlet UITextField *phoneTF;
- (IBAction)saveButton:(UIBarButtonItem *)sender;

@end

@implementation DPRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)dealloc {
    [_nameTF release];
    [_emailTF release];
    [_phoneTF release];
    [super dealloc];
}

- (IBAction)saveButton:(UIBarButtonItem *)sender {
    
}

@end
