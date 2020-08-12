//
//  ContactsController.h
//  ContactsMRC
//
//  Created by Chad Parker on 8/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

@interface ContactsController : NSObject

@property (nonatomic, readonly) NSUInteger contactCount;

- (nonnull Contact *)contactAtIndex:(NSInteger)index;
- (void)createContact:(Contact *)contact;

@end

NS_ASSUME_NONNULL_END
