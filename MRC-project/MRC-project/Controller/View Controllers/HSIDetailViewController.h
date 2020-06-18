//
//  HSIDetailViewController.h
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HSIContactTableViewController;
@class HSIContact;

@interface HSIDetailViewController : UIViewController

@property (nonatomic, retain) HSIContact *contact;
@property (nonatomic, weak) HSIContactTableViewController *delegate;

@end

