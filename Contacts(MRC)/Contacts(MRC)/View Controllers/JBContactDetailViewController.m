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
#import "NSString+JBHelpers.h"


@interface JBContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *saveBarButton;
@property (retain, nonatomic) IBOutlet UIImageView *qrCodeImageView;

@property (retain, nonatomic) NSString *contactCardString;

- (IBAction)saveTapped:(id)sender;

- (void)setUpViewsForContact;
- (void)setQRCodeForContact;
- (void)setSaveButtonEnabled;
- (UIImage *_Nullable)qrCodeFromString:(NSString *)string;

@end


@implementation JBContactDetailViewController

#pragma mark - Init / View Lifecycle / Dealloc

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpViewsForContact];
    [self setQRCodeForContact];
    [self setSaveButtonEnabled];
    self.nameTextField.delegate = self;
    self.emailTextField.delegate = self;
    self.phoneTextField.delegate = self;
}

- (void)setUpViewsForContact
{
    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        self.phoneTextField.text = self.contact.phoneNumber.formattedAsPhoneNumber;
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

- (void)setSaveButtonEnabled
{
    [self.saveBarButton setEnabled:!(self.nameTextField.text.isEmpty)];
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
    // TODO: allow phone # format for different regions, no area code, etc
    if (self.nameTextField.text.isEmpty ||
        self.phoneTextField.text.length < 10 ||
        (!self.emailTextField.text.isEmpty && !self.emailTextField.text.isValidEmail))
    {
        return;
    }

    if (self.contact) {
        [self.contactsController
         updateContact:self.contact
         withName:self.nameTextField.text
         emailAddress:self.emailTextField.text
         phoneNumber:self.phoneTextField.text.strippingNonDecimalCharacters];
    } else {
        [self.contactsController
         addContactWithName:self.nameTextField.text
         emailAddress:self.emailTextField.text
         phoneNumber:self.phoneTextField.text.strippingNonDecimalCharacters];
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark - QR Code

- (void)setQRCodeForContact
{
    if (self.nameTextField.text.isEmpty) { return; }
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
        if (textField.text.isEmpty) {
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

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if (textField == self.nameTextField) {
        return !textField.text.isEmpty;
    }
    if (textField == self.emailTextField && !textField.text.isEmpty) {
        return textField.text.isValidEmail;
    } else if (textField == self.phoneTextField && !textField.text.isEmpty) {
        return textField.text.strippingNonDecimalCharacters.isValidPhoneNumber;
    } else {
        return YES;
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.phoneTextField) {
        textField.text = textField.text.formattedAsPhoneNumber;
    }
    [self setQRCodeForContact];
}

- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string
{
    if (textField == self.phoneTextField) {
        // prevent non-numeric digits from being entered
        NSRange replacementRange =
            [string rangeOfCharacterFromSet:
             [[NSCharacterSet decimalDigitCharacterSet] invertedSet]];
        if (replacementRange.location != NSNotFound) {
            return NO;
        }
    }
    return YES;
}

- (void)textFieldDidChangeSelection:(UITextField *)textField
{
    if (textField == self.nameTextField) {
        [self setSaveButtonEnabled];
    }
}

@end
