//
//  SSSContactDetailViewController.h
//  ContactsMRC
//
//  Created by Shawn Gee on 5/20/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SSSContact;
@class SSSContactController;

@interface SSSContactDetailViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) SSSContactController *contactController;
@property (nonatomic, retain) SSSContact *contact;

@end

