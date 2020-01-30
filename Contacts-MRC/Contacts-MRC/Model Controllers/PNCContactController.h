//
//  PNCContactController.h
//  Contacts-MRC
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class PNCContact;

@interface PNCContactController : NSObject

@property (nonatomic, copy) NSArray *contacts;

- (void)addContactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;
- (void)updateContact: (PNCContact *)contact name:(NSString *)name phoneNumber:(NSString *)phoneNumber email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
