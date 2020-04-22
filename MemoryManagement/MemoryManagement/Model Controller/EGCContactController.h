//
//  EGCContactController.h
//  MemoryManagement
//
//  Created by Enrique Gongora on 4/22/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EGCContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface EGCContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<EGCContact *> *contacts;

- (void)addContact:(EGCContact *)aContact;
- (void)updateContact:(EGCContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
