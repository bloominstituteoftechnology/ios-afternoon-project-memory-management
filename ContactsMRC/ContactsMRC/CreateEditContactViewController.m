//
//  CreateEditContactViewController.m
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import "CreateEditContactViewController.h"
#import "LSIContact.h"
#import "LSIContactController.h"

@interface CreateEditContactViewController ()

// MARK: - Outlets
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@property BOOL wasEdited;

-(void)updateViews;

@end

@implementation CreateEditContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contact) {
        [self updateViews];
    } else {
        NSString *titleString = [[NSString alloc] initWithString:@"Add new Artist"];
        self.title = titleString;
        [titleString release];
    }
    
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//
//    if (self.wasEdited) {
//        NSString *name = self.nameTextField.text;
//        NSString *email = self.emailAddressTextField.text;
//        NSString *phone = self.phoneNumberTextField.text;
//
//        self.contact.phonenumber = phone;
//        self.contact.name = name;
//        self.contact.email = email;
//    }
//
//
//}

//- (void)setEditing:(BOOL)editing {
//    [super setEditing:editing];
//    if (editing) {
//        self.wasEdited = YES;
//    }
//    [self.nameTextField setUserInteractionEnabled:editing];
//    [self.phoneNumberTextField setUserInteractionEnabled:editing];
//    [self.emailAddressTextField setUserInteractionEnabled:editing];
//
//
//    self.navigationItem.hidesBackButton = editing;
//
//
//
//}

// MARK: - Private functions
- (void)updateViews {
    if (self.contact) {
        self.title = self.contact.name;
        self.nameTextField.text = self.contact.name;
        self.phoneNumberTextField.text = self.contact.phonenumber;
        self.emailAddressTextField.text = self.contact.email;
        
        [self.nameTextField setAllowsEditingTextAttributes:YES];
        [self.emailAddressTextField setAllowsEditingTextAttributes:YES];
        [self.phoneNumberTextField setAllowsEditingTextAttributes:YES];
    }
}


// MARK: - Actions

- (IBAction)saveButtonTapped:(id)sender {
    
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailAddressTextField.text;
    NSString *phone = self.phoneNumberTextField.text;
    
    if (self.controller == nil && self.contact != nil) {
        LSIContactController *newController = [[LSIContactController alloc]init];
        [newController updateContact:self.contact withName:name email:email phone:phone];
        [newController release];
        newController = nil;

    } else if (!self.contact) {
        NSLog(@"Save button tapped.");
        LSIContact *contact = [[[LSIContact alloc]initWithName:self.nameTextField.text phonenumber: self.phoneNumberTextField.text email:self.emailAddressTextField.text]autorelease];
        
        [self.controller addContact: contact];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)dealloc {
    [_nameTextField release];
    [_emailAddressTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}






@end
