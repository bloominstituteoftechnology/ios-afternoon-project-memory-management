//
//  ContactDetailViewController.m
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import "ContactDetailViewController.h"
#import "Contact.h"
#import "ContactController.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation ContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.text = self.contact.name;
    self.phoneNumberTextField.text = self.contact.phoneNumber;
    self.emailTextField.text = self.contact.email;
}

- (void)dealloc {
    [_nameTextField release];
    [_phoneNumberTextField release];
    [_emailTextField release];
    [_contact release];
    [_contactController release];
    [super dealloc];
}

- (IBAction)saveButton:(id)sender {
    if (self.contact) {
        [self.contact setValue:_nameTextField.text forKey:@"name"];
        [self.contact setValue:_phoneNumberTextField.text forKey:@"phoneNumber"];
        [self.contact setValue:_emailTextField.text forKey:@"email"];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        Contact *newContact = [[Contact alloc] initWithName:_nameTextField.text phoneNumber:_phoneNumberTextField.text email:_emailTextField.text];
        [self.contactController createContact:newContact];
        [newContact release];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}


@end
