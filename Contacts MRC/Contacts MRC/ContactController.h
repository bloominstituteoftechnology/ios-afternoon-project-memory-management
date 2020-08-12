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
- (void)updateContactAtIndex:(NSInteger)index withName:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
