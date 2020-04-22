//
//  SAHContactDetailViewController.h
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAHContactController;
@class SAHContact;

NS_ASSUME_NONNULL_BEGIN

@interface SAHContactDetailViewController : UIViewController

@property (nonatomic, retain) SAHContactController *contactController;
@property (nonatomic, retain) SAHContact *contact;

@end

NS_ASSUME_NONNULL_END
