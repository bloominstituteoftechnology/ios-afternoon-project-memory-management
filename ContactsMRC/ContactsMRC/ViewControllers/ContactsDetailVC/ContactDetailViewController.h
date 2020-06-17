//
//  ContactDetailViewController.h
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDGContactController.h"
#import "CDGContact.h"


NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (weak, nonatomic) CDGContactController *contactController;
@property (weak, nonatomic) CDGContact *contact;

@end

NS_ASSUME_NONNULL_END
