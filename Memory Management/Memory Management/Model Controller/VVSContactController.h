//
//  VVSContactController.h
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VVSContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface VVSContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<VVSContact *> *contacts;

- (void)addContact:(VVSContact *)aContact;
- (void)updateContact:(VVSContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
