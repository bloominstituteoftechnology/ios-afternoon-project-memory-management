//
//  DetailViewController.m
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

// MARK: - Outlets

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *phoneTextField;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    NSLog(@"Save Tapped");
    [self.navigationController popViewControllerAnimated:YES];
}

@end
