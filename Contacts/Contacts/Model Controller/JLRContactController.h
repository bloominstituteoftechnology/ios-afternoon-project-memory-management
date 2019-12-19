//
//  JLRContactController.h
//  Contacts
//
//  Created by Jesse Ruiz on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JLRContact;
NS_ASSUME_NONNULL_BEGIN

@interface JLRContactController : NSObject

@property (nonatomic, retain) NSMutableArray *contacts;

- (JLRContact *)createContactWithName:(NSString *)name
                                phone:(NSString *)phone
                                email:(NSString *)email;

- (void)updateContact:(JLRContact *)contact withName:(NSString *)name
                phone:(NSString *)phone
             andEmail:(NSString *)email;

- (void)deleteContact:(JLRContact *)contact;

@end

NS_ASSUME_NONNULL_END
