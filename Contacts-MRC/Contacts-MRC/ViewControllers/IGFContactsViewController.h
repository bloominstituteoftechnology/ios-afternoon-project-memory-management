//
//  IGFContactsViewController.h
//  Contacts-MRC
//
//  Created by Ian French on 12/8/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class IGFContactsController;
@class IGFContacts;

@interface IGFContactsViewController : UIViewController

@property (nonatomic, retain) IGFContactsController *contactsController;
@property (nonatomic, retain) IGFContacts *contact;



@end

NS_ASSUME_NONNULL_END
