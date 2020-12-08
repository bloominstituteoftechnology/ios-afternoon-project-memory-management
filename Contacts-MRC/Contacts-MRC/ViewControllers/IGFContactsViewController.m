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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}
@end
