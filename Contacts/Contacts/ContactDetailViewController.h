//
//  ContactDetailViewController.h
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;
@class ContactController;

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (nonatomic, retain) Contact *contact;
@property (nonatomic, retain) ContactController *contactsController;

@end

NS_ASSUME_NONNULL_END
