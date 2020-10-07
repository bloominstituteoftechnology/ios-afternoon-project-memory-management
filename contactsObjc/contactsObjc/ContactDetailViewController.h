//
//  ContactDetailViewController.h
//  contactsObjc
//
//  Created by Clayton Watkins on 10/7/20.
//

#import <UIKit/UIKit.h>

@class Contact;
@class ContactController;

NS_ASSUME_NONNULL_BEGIN

@interface ContactDetailViewController : UIViewController

@property (nonatomic, retain)Contact *contact;
@property (nonatomic, retain) ContactController *contactController;

@end

NS_ASSUME_NONNULL_END
