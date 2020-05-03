//
//  ContactDetailViewController.h
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;
@class ContactsTableViewController;

NS_ASSUME_NONNULL_BEGIN

@protocol ContactDelegate;

@interface ContactDetailViewController : UIViewController

@property (nonatomic, retain) Contact *contact;
@property (nonatomic, weak) id<ContactDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
