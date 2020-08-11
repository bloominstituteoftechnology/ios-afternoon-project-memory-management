//
//  ContactDetailViewController.h
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"
#import "ContactController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (nonatomic, retain) ContactController *contactController;
@property (nonatomic, retain) Contact *contact;
@property (nonatomic) BOOL isAddContact;

@end

NS_ASSUME_NONNULL_END
