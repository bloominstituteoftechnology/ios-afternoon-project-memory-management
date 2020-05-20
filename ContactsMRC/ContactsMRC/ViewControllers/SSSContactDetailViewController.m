//
//  SSSContactDetailViewController.m
//  ContactsMRC
//
//  Created by Shawn Gee on 5/20/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import "SSSContactDetailViewController.h"
#import "SSSContact.h"

@interface SSSContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UILabel *nameLabel;
@property (retain, nonatomic) IBOutlet UILabel *emailLabel;
@property (retain, nonatomic) IBOutlet UILabel *phoneLabel;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

- (void)updateUI;
- (void)setLabelsHidden:(BOOL)hidden;
- (void)setTextFieldsHidden:(BOOL)hidden;

@end

@implementation SSSContactDetailViewController

- (void)dealloc {
    [_contact release];
    [_nameLabel release];
    [_emailLabel release];
    [_phoneLabel release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.editButtonItem setTarget:self];
    [self updateUI];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    if (editing) {
        [self setLabelsHidden:YES];
        [self setTextFieldsHidden:NO];
        
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber;
    } else {
        self.contact.name = self.nameTextField.text;
        self.contact.emailAddress = self.emailTextField.text;
        self.contact.phoneNumber = self.phoneTextField.text;
        
        [self updateUI];
    }
    
    [super setEditing:editing animated:animated];
}

- (void)updateUI {
    if (self.contact) {
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
        
        [self setLabelsHidden:NO];
        [self setTextFieldsHidden:YES];
        
        self.nameLabel.text = self.contact.name;
        self.emailLabel.text = self.contact.emailAddress;
        self.phoneLabel.text = self.contact.phoneNumber;

    } else {
        self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(save)] autorelease];
        
        [self setLabelsHidden:YES];
        [self setTextFieldsHidden:NO];
    }
}

- (void)setLabelsHidden:(BOOL)hidden {
    [self.nameLabel setHidden:hidden];
    [self.emailLabel setHidden:hidden];
    [self.phoneLabel setHidden:hidden];
}

- (void)setTextFieldsHidden:(BOOL)hidden {
    [self.nameTextField setHidden:hidden];
    [self.emailTextField setHidden:hidden];
    [self.phoneTextField setHidden:hidden];
}

- (void)edit {
    [self setEditing:YES animated:YES];
}

- (void)save {
    
}


@end
