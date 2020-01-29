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

@property (retain, nonatomic) NSString *contactCardString;

- (void)setUpViewsForContact;

- (IBAction)saveTapped:(id)sender;

- (void)setQRCodeForContact;
- (UIImage *_Nullable)qrCodeFromString:(NSString *)string;

- (NSString *)formatPhoneNumberFromString:(NSString *)originalString;

@end


@implementation JBContactDetailViewController

#pragma mark - Init / View Lifecycle / Dealloc

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpViewsForContact];
    [self setQRCodeForContact];
    self.nameTextField.delegate = self;
    self.emailTextField.delegate = self;
    self.phoneTextField.delegate = self;
}

- (void)setUpViewsForContact
{
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = [self formatPhoneNumberFromString:self.contact.phoneNumber];
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
    [_contactCardString release];

    [super dealloc];
}

#pragma mark - Setters

- (void)setContact:(JBContact *)contact
{
    if (_contact != contact) {
        [_contact release];
        _contact = [contact retain];
    }
}

- (void)setContactsController:(JBContactsController *)contactsController
{
    if (_contactsController != contactsController) {
        [_contactsController release];
        _contactsController = [contactsController retain];
    }
}

- (void)setContactCardString:(NSString *)contactCardString
{
    if (_contactCardString != contactCardString) {
        [_contactCardString release];
        _contactCardString = [contactCardString retain];
    }
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

- (void)setQRCodeForContact
{
    if ([self.nameTextField.text isEqualToString:@""]) { return; }
    NSString *contactCardString = [NSString stringWithFormat:@"%@\nEmail: %@\nPhone: %@",
                                   self.nameTextField.text,
                                   self.emailTextField.text,
                                   self.phoneTextField.text];
    self.qrCodeImageView.image = [self qrCodeFromString:contactCardString];
}

- (UIImage *)qrCodeFromString:(NSString *)string
{
    NSData *data = [string dataUsingEncoding:NSNonLossyASCIIStringEncoding];
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

#pragma mark - Text Field Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.nameTextField) {
        if ([textField.text isEqualToString:@""]) {
            return NO;
        }
        [self.emailTextField becomeFirstResponder];
    } else if (textField == self.emailTextField) {
        [self.phoneTextField becomeFirstResponder];
    } else if (textField == self.phoneTextField) {
        [self.view endEditing:YES];
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.phoneTextField) {
        textField.text = [self formatPhoneNumberFromString:textField.text];
    }
    [self setQRCodeForContact];
}

- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{
    if (textField == self.phoneTextField) {
        NSRange replacementRange =
            [string rangeOfCharacterFromSet:[[NSCharacterSet decimalDigitCharacterSet]
                                             invertedSet]];
        if (replacementRange.location != NSNotFound) {
            return NO;
        }
    }
    return YES;
}

#pragma mark - Helpers

- (NSString *)formatPhoneNumberFromString:(NSString *)originalString
{
    NSMutableString *formattedNumber = [[@"(" mutableCopy] autorelease];
    for (int i = 0; i < originalString.length; i++) {
        [formattedNumber appendFormat:@"%c", [originalString characterAtIndex:i]];
        if (i == 2) {
            [formattedNumber appendString:@") "];
        } else if (i == 5) {
            [formattedNumber appendString:@"-"];
        } else if (i == 9) {
            break;
        }
    }
    return [[formattedNumber copy] autorelease];
}

@end
