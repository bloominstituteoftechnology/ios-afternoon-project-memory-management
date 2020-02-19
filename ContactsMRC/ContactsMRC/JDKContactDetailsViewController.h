//
//  JDKContactDetailsViewController.h
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class JDKContactsController;
@class JDKContact;

@interface JDKContactDetailsViewController : UIViewController

@property (nonatomic, retain) JDKContactsController *contactController;
@property (nonatomic, retain) JDKContact *contact;

@end

NS_ASSUME_NONNULL_END
