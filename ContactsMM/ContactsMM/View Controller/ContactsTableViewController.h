//
//  ContactsTableViewController.h
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContactController;

NS_ASSUME_NONNULL_BEGIN

@interface ContactsTableViewController : UITableViewController

@property (nonatomic) ContactController *contactController;

@end

NS_ASSUME_NONNULL_END
