//
//  LSIContactController.h
//  Contacts
//
//  Created by James McDougall on 3/5/21.
//

#import <Foundation/Foundation.h>
#import "LSIContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIContactController : NSObject

/// Properties
@property (nonatomic, retain) NSMutableArray<LSIContact *> *contacts;

/// Methods
-(instancetype)init;

- (void)saveContact:(LSIContact *)contact;
- (void)loadContacts;
- (NSURL *)documentsURL;

@end

NS_ASSUME_NONNULL_END

