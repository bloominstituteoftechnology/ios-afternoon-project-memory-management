//
//  ContactsTableViewController.h
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactsTableViewController : UITableViewController

@property (nonatomic, retain) NSMutableArray<Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
