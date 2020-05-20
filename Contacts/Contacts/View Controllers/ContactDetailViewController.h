//
//  ContactDetailViewController.h
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WAHContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (nonatomic, assign) WAHContactController *contactController;
@property (nonatomic, assign) WAHContact *contact;


@end

NS_ASSUME_NONNULL_END
