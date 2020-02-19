//
//  VVSViewController.h
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VVSContact.h"
#import "VVSContactController.h"
#import "VVSTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface VVSViewController : UIViewController

@property (nonatomic) VVSContact *contact;
@property (nonatomic) VVSContactController *contactController;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

NS_ASSUME_NONNULL_END
