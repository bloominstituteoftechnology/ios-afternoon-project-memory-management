//
//  ViewController.h
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BYContact;
@class BYContactController;

@interface BYContactDetailViewController : UIViewController

@property (retain) BYContact *contact;
@property (retain) BYContactController *controller;

@end

