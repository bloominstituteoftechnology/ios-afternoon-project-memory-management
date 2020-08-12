//
//  DetailViewController.h
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactController.h"

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic, assign) Contact *contact;
@property (nonatomic, assign) ContactController *contactController;

@end

NS_ASSUME_NONNULL_END
