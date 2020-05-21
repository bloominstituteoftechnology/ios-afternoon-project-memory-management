//
//  SSSContactDetailViewController.m
//  ContactsMRC
//
//  Created by Shawn Gee on 5/20/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import "SSSContactDetailViewController.h"
#import "SSSContactController.h"
#import "SSSContact.h"

@interface SSSContactDetailViewController ()

@property (weak, nonatomic) UIBarButtonItem *saveButton;

@property (retain, nonatomic) IBOutlet UILabel *nameLabel;
@property (retain, nonatomic) IBOutlet UILabel *emailLabel;
@property (retain, nonatomic) IBOutlet UILabel *phoneLabel;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

- (void)setUpUI;
- (void)updateUI;
- (void)setLabelsHidden:(BOOL)hidden;
- (void)setTextFieldsHidden:(BOOL)hidden;

@end

@implementation SSSContactDetailViewController

- (void)dealloc {
    [_contactController release];
    [_contact release];
    [_nameLabel release];
    [_emailLabel release];
    [_phoneLabel release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}

// MARK: - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.delegate = self;
    [self.editButtonItem setTarget:self];
    [self setUpUI];
}

// MARK: - Private Methods

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    
    // When hitting done after editing, assign changes from textFields to contact
    if (!editing) {
        self.contact.name = self.nameTextField.text;
        self.contact.emailAddress = self.emailTextField.text;
        self.contact.phoneNumber = self.phoneTextField.text;
    }
    
    [super setEditing:editing animated:animated];
    [self updateUI];
}

- (void)setUpUI {
    if (self.contact) {
        // Displaying existing contact, use edit button
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
        [self updateUI];
    } else {
        // Adding new contact
        self.navigationItem.rightBarButtonItem =
        [[[UIBarButtonItem alloc] initWithTitle:@"Save"
                                          style:UIBarButtonItemStylePlain
                                         target:self
                                         action:@selector(save)] autorelease];
        [self.navigationItem.rightBarButtonItem setEnabled:NO];
        self.saveButton = self.navigationItem.rightBarButtonItem;
        [self setLabelsHidden:YES];
        [self setTextFieldsHidden:NO];
    }
}

- (void)updateUI {
    self.title = self.contact.name;
    if (self.isEditing) {
        [self setLabelsHidden:YES];
        [self setTextFieldsHidden:NO];
        
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber;
    } else {
        [self setLabelsHidden:NO];
        [self setTextFieldsHidden:YES];
        
        self.nameLabel.text = self.contact.name;
        self.emailLabel.text = self.contact.emailAddress;
        self.phoneLabel.text = self.contact.phoneNumber;
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

// MARK: - Actions

- (void)edit {
    [self setEditing:YES animated:YES];
}

- (void)save {
    SSSContact *contact = [SSSContact contactWithName:self.nameTextField.text emailAddress:self.emailTextField.text phoneNumber:self.phoneTextField.text];
    [self.contactController addContact:contact];
    [self.navigationController popViewControllerAnimated:YES];
}

// MARK: - Text Field Delegate

- (void)textFieldDidChangeSelection:(UITextField *)textField {
    [self.saveButton setEnabled:![self.nameTextField.text isEqualToString:@""]];
}

@end
