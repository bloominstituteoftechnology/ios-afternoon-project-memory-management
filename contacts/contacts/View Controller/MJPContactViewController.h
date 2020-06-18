//
//  MJPContactViewController.h
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJPContact.h"
#import "MJPContactController.h"
#import "MJPContactsTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MJPContactViewController : UIViewController

@property (nonatomic, strong) MJPContact *contact;
@property (nonatomic, strong) MJPContactController *contactController;

@property (nonatomic, retain) IBOutlet UITextField *nameTextField;
@property (nonatomic, retain) IBOutlet UITextField *emailTextField;
@property (nonatomic, retain) IBOutlet UITextField *phoneTextField;

@end

NS_ASSUME_NONNULL_END
