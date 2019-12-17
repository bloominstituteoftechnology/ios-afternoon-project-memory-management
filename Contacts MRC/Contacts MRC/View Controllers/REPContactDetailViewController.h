//
//  ViewController.h
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
@class REPContactController;
@class REPContact;

@interface REPContactDetailViewController : UIViewController

@property (assign, nonatomic) REPContact *contact;
@property (assign, nonatomic) REPContactController *contactController;


@end

