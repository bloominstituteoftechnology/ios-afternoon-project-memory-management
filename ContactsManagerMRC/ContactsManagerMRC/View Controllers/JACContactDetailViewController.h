//
//  JACContactDetailViewController.h
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JACContact;
@class JACContactController;
@interface JACContactDetailViewController : UIViewController

@property (nonatomic, retain) JACContact *contact;
@property (nonatomic, retain) JACContactController *controller;

@end

NS_ASSUME_NONNULL_END
