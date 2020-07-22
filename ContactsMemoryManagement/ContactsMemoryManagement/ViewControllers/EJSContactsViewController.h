//
//  EJSContactsViewController.h
//  ContactsMemoryManagement
//
//  Created by Enzo Jimenez-Soto on 7/22/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EJSContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EJSContactsViewController : UIViewController

@property (nonatomic, assign) EJSContactController *contactController;
@property (nonatomic, assign) EJSContact *contact;
@property(nonatomic, getter=isHidden) BOOL hidden;

@end

NS_ASSUME_NONNULL_END
