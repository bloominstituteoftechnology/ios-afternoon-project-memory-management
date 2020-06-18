//
//  ContactDetailViewController.h
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BRDContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (nonatomic, assign) BRDContactController *contactController;
@property (nonatomic, assign) BRDContact *contact;

@end

NS_ASSUME_NONNULL_END
