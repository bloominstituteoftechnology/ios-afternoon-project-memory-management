//
//  ContactController.h
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject
@property (nonatomic, readonly, copy) NSArray<Contact *> *contacts;

- (instancetype)init;

- (void)addContact:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
