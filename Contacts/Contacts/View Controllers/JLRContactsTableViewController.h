//
//  JLRContactsTableViewController.h
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JLRContactController;
NS_ASSUME_NONNULL_BEGIN

@interface JLRContactsTableViewController : UITableViewController

@property (nonatomic, retain) JLRContactController *controller;

@end

NS_ASSUME_NONNULL_END
