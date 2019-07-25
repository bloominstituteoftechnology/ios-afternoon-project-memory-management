//
//  HSVContactDetailViewController.h
//  Contacts MRC
//
//  Created by Hector Steven on 7/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HSVContactController;
@class HSVContact;
NS_ASSUME_NONNULL_BEGIN

@interface HSVContactDetailViewController : UIViewController

@property (nonatomic, strong) HSVContactController *contactController;
@property (nonatomic, strong) HSVContact *contact;


@end

NS_ASSUME_NONNULL_END
