//
//  MTGTableViewController.h
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTGContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTGTableViewController : UITableViewController

@property (nonatomic, retain) MTGContactController *contactController;

@end

NS_ASSUME_NONNULL_END
