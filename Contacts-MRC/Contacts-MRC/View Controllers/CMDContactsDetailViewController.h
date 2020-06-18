//
//  CMDContactsDetailViewController.h
//  Contacts-MRC
//
//  Created by Chris Dobek on 6/17/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class CMDContactsController, CMDContact;

@interface CMDContactsDetailViewController : UIViewController

@property (nonatomic, retain) CMDContactsController *contactsController;
@property (nonatomic, retain) CMDContact *contact;

@end

NS_ASSUME_NONNULL_END
