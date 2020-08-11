//
//  ContactController.h
//  Contacts MRC
//
//  Created by Sean Acres on 8/11/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<Contact *> *contacts;

- (void)addContact:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
