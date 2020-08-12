//
//  ContactController.h
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

@property (nonatomic, readonly) NSMutableArray<Contact *> *contacts;

- (void)addContact:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
