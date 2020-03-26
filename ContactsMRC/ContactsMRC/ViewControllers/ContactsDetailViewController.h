//
//  ContactsDetailViewController.h
//  ContactsMRC
//
//  Created by Michael on 3/25/20.
//  Copyright © 2020 Michael. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MBMContactController;
@class MBMContact;

@interface ContactsDetailViewController : UIViewController

@property (nonatomic, retain)MBMContactController *contactController;

@property (nonatomic, retain)MBMContact *contact;

@end

NS_ASSUME_NONNULL_END
