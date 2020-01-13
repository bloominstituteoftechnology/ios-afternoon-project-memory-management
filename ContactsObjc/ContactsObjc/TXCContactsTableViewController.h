//
//  TXCContactsTableViewController.h
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TXCContactsController;
NS_ASSUME_NONNULL_BEGIN

@interface TXCContactsTableViewController : UITableViewController

@property (nonatomic, copy) TXCContactsController *contactsController;

@end

NS_ASSUME_NONNULL_END
