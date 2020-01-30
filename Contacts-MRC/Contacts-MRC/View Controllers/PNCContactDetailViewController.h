//
//  PNCContactDetailViewController.h
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PNCContact;
@class PNCContactController;

@interface PNCContactDetailViewController : UIViewController

@property (retain) PNCContact *contact;
@property (retain) PNCContactController *controller;

@end


