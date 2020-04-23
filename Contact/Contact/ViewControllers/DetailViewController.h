//
//  ViewController.h
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContactController;
@class Contact;

@interface DetailViewController : UIViewController

@property (nonatomic, retain) ContactController *contactController;
@property (nonatomic, retain) Contact *contact;


@end

