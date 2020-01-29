//
//  SKSContactsDetailViewController.h
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SKSContactsController, SKSContact;

@interface SKSContactsDetailViewController : UIViewController

@property (nonatomic, retain) SKSContactsController *contactsController;
@property (nonatomic, retain) SKSContact *contact;

@end

