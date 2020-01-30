//
//  DPRContactController.h
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPRContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPRContactController : NSObject

@property (nonatomic, retain)NSMutableArray *contacts;

- (void)addContact:(DPRContact *)contact;
- (void)updateContact:(DPRContact *)contact name:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
