//
//  DTWContactDetailViewController.h
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DTWContactController;
@class DTWContact;

NS_ASSUME_NONNULL_BEGIN

@interface DTWContactDetailViewController : UIViewController

@property (nonatomic, retain) DTWContactController *contactController;
@property (nonatomic, retain) DTWContact *contact;

@end

NS_ASSUME_NONNULL_END
