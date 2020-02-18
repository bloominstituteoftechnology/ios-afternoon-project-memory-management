//
//  ContactsController.h
//  Contacts
//
//  Created by Bobby Keffury on 2/18/20.
//  Copyright © 2020 Bobby Keffury. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Contact;

@interface ContactsController : NSObject

@property (nonatomic, readonly, copy) NSArray<Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
