//
//  ContactsTableViewController.h
//  Contacts Memory Management
//
//  Created by Dillon P on 5/3/20.
//  Copyright © 2020 Dillon's Lambda Team. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@protocol ContactDelegate;


@interface ContactsTableViewController : UITableViewController

@property (nonatomic, copy) NSMutableArray<Contact *> *contacts;

@end


@protocol ContactDelegate <NSObject>

- (void)newContactAdded:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
