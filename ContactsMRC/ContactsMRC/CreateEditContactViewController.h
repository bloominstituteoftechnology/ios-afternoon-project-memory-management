//
//  CreateEditContactViewController.h
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSIContact;
@class LSIContactController;

NS_ASSUME_NONNULL_BEGIN

@interface CreateEditContactViewController : UIViewController


@property LSIContact *contact;
@property LSIContactController *controller;


@end

NS_ASSUME_NONNULL_END
