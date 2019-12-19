//
//  DetailViewController.h
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JLRContact;
@class JLRContactController;
@interface DetailViewController : UIViewController

@property (nonatomic, retain) JLRContact *contact;
@property (nonatomic, retain) JLRContactController *controller;

@end

