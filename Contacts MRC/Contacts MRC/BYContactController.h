//
//  BYContactController.h
//  Contacts MRC
//
//  Created by Bradley Yin on 10/16/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class BYContact;

@interface BYContactController : NSObject

@property (nonatomic, copy) NSArray *contacts;

- (void)addContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;
- (void)updateContact: (BYContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
