//
//  DetailViewController.m
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import "DetailViewController.h"
#import "ContactController.h"
#import "Contact.h"

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
    [self updateViews];
}

- (void)updateViews {
    NSLog(@"updateViews");
    
    // view/edit
    if (self.contact) {
        
    }
    
    // add
    else {
        self.title = @"Add New Contact";
    }
}

- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    NSLog(@"Save Tapped");
    
    [self.contactController addContactWithName:self.nameTextField.text
                                         email:self.emailTextField.text
                                         phone:self.phoneTextField.text];
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
