//
//  ContactsTableViewController.h
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAMContactController;

@interface ContactsTableViewController : UITableViewController

@property (nonatomic, nullable, retain) CAMContactController *controller;

@end

NS_ASSUME_NONNULL_END
