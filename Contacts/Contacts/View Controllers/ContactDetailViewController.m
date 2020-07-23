//
//  ContactDetailViewController.m
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "CAMContact.h"
#import "CAMContactController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameField;
@property (retain, nonatomic) IBOutlet UITextField *emailField;
@property (retain, nonatomic) IBOutlet UITextField *phoneField;
@property (retain, nonatomic) IBOutlet UITextField *companyField;

@end

@implementation ContactDetailViewController
//MARK: - Life Cycles -
- (instancetype)init
{
    self = [super init];
    if (self) {
        [_contact retain];
        [_controller retain];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    if (self.contact) {
        [self setupEdit];
    } else {
        [self setupAdd];
    }
}


//MARK: - Actions -
- (IBAction)saveContact:(id)sender {
    if (self.contact && !([self.nameField.text isEqual: nil] || [self.nameField.text isEqualToString: @""])) {
        self.contact.name = self.nameField.text;
        self.contact.email = self.emailField.text;
        self.contact.phone = self.phoneField.text;
        self.contact.company = self.companyField.text;
    } else if (!self.contact && !([self.nameField.text isEqual: nil] || [self.nameField.text isEqualToString: @""])) {
        CAMContact *newContact = [CAMContact contactWithName: self.nameField.text
                                                       email: self.emailField.text
                                                       phone: self.phoneField.text
                                                     company: self.companyField.text];
        _contact = newContact;
        [self.controller.contacts addObject: self.contact];
    } else {
        NSLog(@"Enter name to save or edit a contact.");
    }
    return;
}


//MARK: - Methods -
- (void)setupEdit
{
    self.nameField.text = self.contact.name;
    self.emailField.text = self.contact.email;
    self.phoneField.text = self.contact.phone;
    self.companyField.text = self.contact.company;
}

- (void)setupAdd
{
    [self.nameField.placeholder isEqualToString: @"Enter name:"];
    [self.emailField.placeholder isEqualToString: @"Enter email:"];
    [self.phoneField.placeholder isEqualToString: @"Enter phone #:"];
    [self.companyField.placeholder isEqualToString: @"Company:"];
}


//MARK: - Memory Management -
- (void)dealloc {
    [_nameField release];
    [_emailField release];
    [_phoneField release];
    [_companyField release];
    [_controller release];
    [_contact release];
    _controller = nil;
    _contact = nil;
    [super dealloc];
}
@end
