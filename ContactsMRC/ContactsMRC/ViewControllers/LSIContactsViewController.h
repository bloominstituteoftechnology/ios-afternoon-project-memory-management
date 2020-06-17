//
//  LSIContactsViewController.h
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSIContactController.h"
#import "LSIContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactsViewController : UIViewController

@property (nonatomic, assign) LSIContactController *contactController;

@end

NS_ASSUME_NONNULL_END
