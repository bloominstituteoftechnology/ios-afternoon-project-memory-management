//
//  EGCViewController.h
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGCContact.h"
#import "EGCContactController.h"
#import "EGCTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EGCViewController : UIViewController

@property (nonatomic, strong) EGCContact *contact;
@property (nonatomic, strong) EGCContactController *contactController;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;


@end

NS_ASSUME_NONNULL_END
