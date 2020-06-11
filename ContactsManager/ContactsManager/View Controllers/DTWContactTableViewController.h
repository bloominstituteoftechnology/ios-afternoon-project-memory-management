//
//  DTWContactTableViewController.h
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DTWContactController;

NS_ASSUME_NONNULL_BEGIN

@interface DTWContactTableViewController : UITableViewController

@property (nonatomic, readonly, retain) DTWContactController *contactController;

@end

NS_ASSUME_NONNULL_END
