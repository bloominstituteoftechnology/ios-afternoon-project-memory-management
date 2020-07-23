//
//  ContactDetailViewController.h
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAMContact;
@class CAMContactController;

@interface ContactDetailViewController : UIViewController

@property (nonatomic, retain, nullable) CAMContactController *controller;
@property (nonatomic, retain, nullable) CAMContact *contact;

@end

NS_ASSUME_NONNULL_END
