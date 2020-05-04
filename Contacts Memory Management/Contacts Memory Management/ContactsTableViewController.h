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

@property (nonatomic, retain) NSMutableArray<Contact *> *contacts;

@end


@protocol ContactDelegate <NSObject>

- (void)contactWasAdded:(Contact *)contact;
- (void)contactWasEdited:(Contact *)contact atIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
