//
//  TXCContactDetailViewController.h
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TXCContact;
@class TXCContactsController;

NS_ASSUME_NONNULL_BEGIN

@interface TXCContactDetailViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *nameLabel;
@property (retain, nonatomic) IBOutlet UILabel *emailLabel;
@property (retain, nonatomic) IBOutlet UILabel *phoneLabel;




@property (copy) TXCContactsController *contactsController;
@property (copy, nonatomic) TXCContact *contact;

@end

NS_ASSUME_NONNULL_END
