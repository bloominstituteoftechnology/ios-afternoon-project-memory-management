//
//  LSIContactDetailViewController.h
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSIContact;
@class LSIContactController;

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactDetailViewController : UIViewController

@property (nonatomic) LSIContact *contact;
@property (nonatomic) LSIContactController *contactController;

@end

NS_ASSUME_NONNULL_END
