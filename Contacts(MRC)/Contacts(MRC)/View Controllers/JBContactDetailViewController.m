//
//  JBContactDetailViewController.m
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import "JBContactDetailViewController.h"
#import "JBContactsController.h"
#import "JBContact.h"
#import <CoreImage/CoreImage.h>


@interface JBContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *saveBarButton;
@property (retain, nonatomic) IBOutlet UIImageView *qrCodeImageView;

- (void)setUpViewsForContact;

- (IBAction)saveTapped:(id)sender;

- (UIImage *_Nullable)qrCodeFromString:(NSString *)string;

@end


@implementation JBContactDetailViewController

#pragma mark - Init / View Lifecycle / Dealloc

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpViewsForContact];
}

- (void)setUpViewsForContact
{
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber;
    }
}

- (void)dealloc
{
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [_saveBarButton release];
    [_qrCodeImageView release];

    [_contactsController release];
    if (_contact) { [_contact release]; }

    [super dealloc];
}

#pragma mark - Actions

- (IBAction)saveTapped:(id)sender {
    if ([self.nameTextField.text isEqualToString:@""]) { return; }

    if (self.contact) {
        [self.contactsController updateContact:self.contact
                                      withName:self.nameTextField.text
                                  emailAddress:self.emailTextField.text
                                   phoneNumber:self.phoneTextField.text];
    } else {
        [self.contactsController addContactWithName:self.nameTextField.text
                                       emailAddress:self.emailTextField.text
                                        phoneNumber:self.phoneTextField.text];
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark - QR Code

- (UIImage *)qrCodeFromString:(NSString *)string
{
    NSData *data = [[string dataUsingEncoding:NSNonLossyASCIIStringEncoding] autorelease];
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [filter setValue:data forKey:@"inputMessage"];
    CGAffineTransform transform = CGAffineTransformMakeScale(3, 3);
    CIImage *output = [filter.outputImage imageByApplyingTransform:transform];
    if (output) {
        return [UIImage imageWithCIImage:output];
    } else {
        return nil;
    }
}

@end
