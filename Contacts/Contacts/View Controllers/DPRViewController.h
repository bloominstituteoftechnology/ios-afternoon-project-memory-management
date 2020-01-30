//
//  DPRViewController.h
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPRContactController.h"
#import "DPRContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPRViewController : UIViewController

@property (nonatomic, retain)DPRContactController *controller;
@property (nonatomic, retain)DPRContact *contact;

@end

NS_ASSUME_NONNULL_END

