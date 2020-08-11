//
//  ContactDetailViewController.h
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (nonatomic, retain) Contact *contact;

@end

NS_ASSUME_NONNULL_END
