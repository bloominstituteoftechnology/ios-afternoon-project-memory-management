//
//  LSIContactDetailViewController.h
//  Contacts MRC
//
//  Created by Isaac Lyons on 12/18/19.
//  Copyright © 2019 Isaac Lyons. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class LSIContact;
@class LSIContactController;

@interface LSIContactDetailViewController : UIViewController

//@property (nonatomic, readwrite, retain) LSIContact *contact;
@property NSInteger index;
@property (nonatomic, readwrite, retain) LSIContactController *controller;

@end
