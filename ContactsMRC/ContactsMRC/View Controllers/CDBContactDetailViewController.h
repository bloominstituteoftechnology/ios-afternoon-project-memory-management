//
//  CDBContactDetailViewController.h
//  ContactsMRC
//
//  Created by Ciara Beitel on 11/13/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CDBContact;
@class CDBContactController;

NS_ASSUME_NONNULL_BEGIN

@interface CDBContactDetailViewController : UIViewController

@property (nonatomic, retain) CDBContact *contact;
@property (nonatomic, retain) CDBContactController *contactController;

@end

NS_ASSUME_NONNULL_END
