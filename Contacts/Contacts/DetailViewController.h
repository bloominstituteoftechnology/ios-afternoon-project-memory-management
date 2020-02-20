//
//  DetailViewController.h
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ContactsController;
@class Contact;

@interface DetailViewController : UIViewController

//MARK: - Properties

@property (nonatomic, assign) ContactsController *contactsController;
@property (nonatomic, assign) Contact *contact;

@end

NS_ASSUME_NONNULL_END
