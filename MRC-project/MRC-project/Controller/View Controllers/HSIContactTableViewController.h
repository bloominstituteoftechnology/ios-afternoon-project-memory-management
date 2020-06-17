//
//  HSIContactTableViewController.h
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HSIContact;

NS_ASSUME_NONNULL_BEGIN

@interface HSIContactTableViewController : UITableViewController

@property (nonatomic, retain) NSMutableArray<HSIContact *> *contacts;

@end

NS_ASSUME_NONNULL_END
