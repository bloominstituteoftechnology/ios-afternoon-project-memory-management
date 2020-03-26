//
//  ContactsDetailViewController.m
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import "ContactsDetailViewController.h"
#import "MBMContactController.h"
#import "MBMContact.h"

@interface ContactsDetailViewController ()


// MARK: - IBOutlets

@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation ContactsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}


- (IBAction)saveContactTapped:(id)sender {
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailTextField.text;
    NSString *phone = self.phoneNumberTextField.text;
    UIImage *image = self.imageView.image;
    
    UIImage *picture = [UIImage imageNamed:@"Jorge"];
    
    if (self.contact != nil) {
        
        [self.contactController.contacts removeObject:self.contact];
        
        MBMContact *contact = [[[MBMContact alloc]initWithName:name email:email phone:phone picture:picture] autorelease];
        
        [self.contactController.contacts addObject:contact];
//        [self.contactController editContactWithName:name email:email phone:phone picture:image contact:self.contact];
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        
        MBMContact *contact = [[[MBMContact alloc] initWithName:name email:email phone:phone picture:image] autorelease];
        
        [self.contactController.contacts addObject:contact];
//        [self.contactController createContactWithName:name email:email phone:phone picture:image];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

-(void)updateViews {
    if (self.contact != nil) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneNumberTextField.text = self.contact.phone;
        self.imageView.image = self.contact.picture;
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
    [_imageView release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [_contact release];
    [_contactController release];
    [super dealloc];
}
@end
