//
//  ContactController.h
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject
@property (nonatomic, readonly, copy)NSMutableArray<Contact *> *contacts;

- (void)createContact: (Contact *)contact;
@end

NS_ASSUME_NONNULL_END
