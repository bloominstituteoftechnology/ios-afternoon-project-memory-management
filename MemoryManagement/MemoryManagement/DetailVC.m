//
//  DetailVC.m
//  MemoryManagement
//
//  Created by Cora Jacobson on 12/10/20.
//

#import "DetailVC.h"
#import "Contact.h"
#import "ContactController.h"

@interface DetailVC ()

@property (nonatomic) IBOutlet UITextField *nameTextField;
@property (nonatomic) IBOutlet UITextField *emailTextField;
@property (nonatomic) IBOutlet UITextField *phoneTextField;
@property (nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation DetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpViews];
}

- (IBAction)saveButton:(id)sender
{
    if (self.contact) {
        self.contact.name = self.nameTextField.text;
        self.contact.email = self.emailTextField.text;
        self.contact.phone = self.phoneTextField.text;
        [self.navigationController popViewControllerAnimated:YES];
        [self.delegate didAddContact];
    } else {
        Contact *contact = [Contact contactWithName:self.nameTextField.text
                                              email:self.emailTextField.text
                                              phone:self.phoneTextField.text];
        [self.delegate addContact:(Contact *)contact];
        [self dismissViewControllerAnimated:YES completion:nil];
        [self.delegate didAddContact];
    }
}

- (void)setUpViews {
    if (self.contact) {
        self.title = [NSString stringWithFormat:@"Update %@", self.contact.name];
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneTextField.text = self.contact.phone;
    } else {
        self.title = @"Add a Contact";
        self.nameTextField.text = @"";
        self.emailTextField.text = @"";
        self.phoneTextField.text = @"";
    }
}

- (void)dealloc
{
    [_contact release];
    [super dealloc];
}

@end
