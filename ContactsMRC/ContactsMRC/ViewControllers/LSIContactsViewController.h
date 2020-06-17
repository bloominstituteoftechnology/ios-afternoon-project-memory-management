//
//  LSIContactsViewController.h
//  ContactsMRC
//
//  Created by Bhawnish Kumar on 6/17/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LSIContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactsViewController : UIViewController

@property (nonatomic, assign) LSIContactController *contactController;
@property (nonatomic, assign) LSIContact *contact;
@property(nonatomic, getter=isHidden) BOOL hidden;

@end

NS_ASSUME_NONNULL_END
