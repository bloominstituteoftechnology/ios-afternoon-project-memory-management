//
//  DetailViewViewController.h
//  Contacts MRC
//
//  Created by Karen Rodriguez on 5/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HLOContact;
@class HLOContactController;
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewViewController : UIViewController

@property (nonatomic, nullable, retain) HLOContact *contact;
@property (nonatomic, nonnull, retain) HLOContactController *contactController;

@end

NS_ASSUME_NONNULL_END
