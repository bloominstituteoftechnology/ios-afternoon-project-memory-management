//
//  DetailViewController.h
//  ContactsMM
//
//  Created by Jorge Alvarez on 3/25/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContactController;
@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic) ContactController *contactController;
@property (nonatomic) Contact *contact;

@end

NS_ASSUME_NONNULL_END
