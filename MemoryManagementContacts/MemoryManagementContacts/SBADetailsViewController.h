//
//  SBADetailsViewController.h
//  MemoryManagementContacts
//
//  Created by Sal B Amer on 6/10/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

#import <UIKit/UIKit.h>

//fwd class dec
@class SBAContact;
@class SBAContactController;

NS_ASSUME_NONNULL_BEGIN

@interface SBADetailsViewController : UIViewController

@property (nonatomic, nullable, retain) SBAContact *contact;
@property (nonatomic, nullable, retain) SBAContactController *contactController;

@end

NS_ASSUME_NONNULL_END
