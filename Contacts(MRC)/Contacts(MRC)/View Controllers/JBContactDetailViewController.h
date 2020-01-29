//
//  JBContactDetailViewController.h
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JBContact;
@class JBContactsController;


@interface JBContactDetailViewController : UIViewController

@property (retain, nonatomic, nullable) JBContactsController *contactsController;
@property (retain, nonatomic, nullable) JBContact *contact;

@end
