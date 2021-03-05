//
//  LSIContactsTableViewController.h
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import <UIKit/UIKit.h>
#import "LSIContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactsTableViewController : UITableViewController

@property (nonatomic, retain) LSIContactController *contactController;

@end

NS_ASSUME_NONNULL_END
