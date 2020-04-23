//
//  KMLContactController.h
//  MemoryManagement
//
//  Created by Keri Levesque on 4/23/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KMLContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface KMLContactController : NSObject

- (void)addContact:(KMLContact *)aContact;

- (void)updateContact:(KMLContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;
@end

NS_ASSUME_NONNULL_END
