//
//  LSIContactDetailViewController.h
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import <UIKit/UIKit.h>
#import "LSIContactController.h"

@interface LSIContactDetailViewController : UIViewController

@property (nonatomic, retain) LSIContactController *contactController;
@property (nonatomic) BOOL detailMode;
@property (nonatomic, retain) NSIndexPath *possibleIndexPath;

@end
