//
//  SAHContactDetailViewController.m
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import "SAHContactDetailViewController.h"
#import "SAHContact.h"
#import "SAHContactController.h"

@interface SAHContactDetailViewController ()
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation SAHContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    // Do any additional setup after loading the view.
}

-(void)updateViews {
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.phoneTextField.text = self.contact.phone;
        self.emailTextField.text = self.contact.email;
    } else {
        self.nameTextField.text = @"";
        self.phoneTextField.text = @"";
        self.emailTextField.text = @"";
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
- (IBAction)saveTapped:(id)sender {
    if (self.contact) {
        self.contact.name = self.nameTextField.text;
        self.contact.phone = self.phoneTextField.text;
        self.contact.email = self.emailTextField.text;
    } else {
        SAHContact *newContact = [[SAHContact alloc] initWithName:self.nameTextField.text phone:self.phoneTextField.text email:self.emailTextField.text];
        [self.contactController createContact:newContact];
        [newContact release];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_nameTextField release];
    [_phoneTextField release];
    [_emailTextField release];
    [_contact release];
    [_contactController release];
    [super dealloc];
}
@end
