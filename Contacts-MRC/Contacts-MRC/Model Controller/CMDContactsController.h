//
//  CMDContactsController.h
//  Contacts-MRC
//
//  Created by Chris Dobek on 6/17/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CMDContact;

@interface CMDContactsController : NSObject

@property (nonatomic, readonly) NSMutableArray<CMDContact *> *contacts;

- (void)addContact:(CMDContact *)contact;

- (void)randomUsersContacts:(NSString *)users completion:(void (^)(NSError *_Nullable))completion;

@end

NS_ASSUME_NONNULL_END
