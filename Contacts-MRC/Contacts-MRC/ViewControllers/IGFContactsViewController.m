//
//  IGFContactsViewController.m
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import "IGFContactsViewController.h"
#import "IGFContactsController.h"
#import "IGFContacts.h"

@interface IGFContactsViewController()


#pragma mark - Properties

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;


@end

@implementation IGFContactsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    if (self.contact) {
        self.title = @"Edit Contact";
        [self.nameTextField setText:self.contact.name];
        [self.emailTextField setText:self.contact.email];
        [self.phoneTextField setText:self.contact.number];
    }
}

#pragma mark - Actions

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    [self saveContact];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)saveContact
{
    NSString *nameString = self.nameTextField.text;
    NSString *emailString = self.emailTextField.text;
    NSString *phoneString = self.phoneTextField.text;

    if (nameString.length > 0 && emailString.length > 0 && phoneString.length > 0 ) {
        if (self.contact) {
            [self.contact setName:nameString];
            [self.contact setEmail:emailString];
            [self.contact setNumber:phoneString];
        } else {
            IGFContacts *contact = [IGFContacts contactWithName:nameString email:emailString number:phoneString];
            [self.contactsController addContact: contact];
        }
    }
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


// removed release of textfields since changed to weak
- (void)dealloc
{
    [_contactsController release];
    [_contact release];
    [super dealloc];
}
@end
