//
//  JACContactController.h
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class JACContact;
@interface JACContactController : NSObject

- (NSUInteger)getContactsCount;
- (JACContact *)getContactAtIndex:(int)index;
- (void)addContact:(JACContact *)newContact;
- (nullable JACContact *)removeContactAtIndex:(int)index;


@end

NS_ASSUME_NONNULL_END
