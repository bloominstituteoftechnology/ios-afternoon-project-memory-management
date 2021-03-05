//
//  LSIContactDetailViewController.m
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import "LSIContactDetailViewController.h"

//MARK: - Private Interface -
@interface LSIContactDetailViewController ()

@property NSNumberFormatter *numberFormatter;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *saveButton;

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

- (void)updateViews;

@end

//MARK: - Implementation -
@implementation LSIContactDetailViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _contactController = [[[LSIContactController alloc] init]autorelease];
    
    if (_detailMode) {
        [self updateViews];
    }
    
    @autoreleasepool {
        _numberFormatter = [[NSNumberFormatter alloc] init];
    }
}

- (void)updateViews {
    _saveButton.enabled = false;
    LSIContact *contact = _contactController.contacts[_possibleIndexPath.row];
    _nameTextField.text = contact.name;
    _emailTextField.text = contact.email;
    _phoneNumberTextField.text = contact.phoneNumber.stringValue;
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *name = _nameTextField.text;
    NSString *email = _emailTextField.text;
    NSString *phoneNumberString = _phoneNumberTextField.text;
    NSNumber *phoneNumber = [_numberFormatter numberFromString:phoneNumberString];
    
    LSIContact *newContact = [[[LSIContact alloc] initWithName:name email:email phoneNumber:phoneNumber]autorelease];
    [self.contactController saveContact:newContact];
    [self.navigationController popViewControllerAnimated:true];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [_saveButton release];
    [super dealloc];
}

@end
