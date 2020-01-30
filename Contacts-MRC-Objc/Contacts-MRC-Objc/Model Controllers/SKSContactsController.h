//
//  SKSContactsController.h
//  Contacts-MRC-Objc
//
//  Created by Lambda_School_Loaner_204 on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class SKSContact;

@interface SKSContactsController : NSObject

@property (nonatomic, readonly) NSMutableArray<SKSContact *> *contacts;

- (void)addContact:(SKSContact *)contact;

- (void)randomUsersContacts:(NSString *)users completion:(void (^)(NSError *_Nullable))completion;

@end

NS_ASSUME_NONNULL_END

