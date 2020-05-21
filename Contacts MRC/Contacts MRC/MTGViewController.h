//
//  MTGViewController.h
//  Contacts MRC
//
//  Created by Mark Gerrior on 5/20/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Contact;
@class MTGContactController;

NS_ASSUME_NONNULL_BEGIN

@interface MTGViewController : UIViewController

@property (nonatomic, retain) MTGContactController *contactController;
@property (nonatomic, retain) Contact *contact;

@end

NS_ASSUME_NONNULL_END
