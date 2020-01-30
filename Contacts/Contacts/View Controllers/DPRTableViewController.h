//
//  DPRTableViewController.h
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPRContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPRTableViewController : UITableViewController

@property (nonatomic, retain) DPRContactController *controller;

@end

NS_ASSUME_NONNULL_END

