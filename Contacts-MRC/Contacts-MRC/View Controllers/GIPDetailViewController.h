//
//  GIPDetailViewController.h
//  Contacts-MRC
//
//  Created by Gi Pyo Kim on 12/18/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GIPContactController, GIPContact;

@interface GIPDetailViewController : UIViewController

@property (retain, nonnull) GIPContactController *controller;
@property (retain, nullable) GIPContact *contact;

@end
