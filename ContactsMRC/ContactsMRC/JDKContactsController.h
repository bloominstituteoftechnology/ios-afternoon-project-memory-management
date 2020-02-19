//
//  JDKContactsController.h
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class JDKContact;

@interface JDKContactsController : NSObject

@property (nonatomic, readonly) NSMutableArray<JDKContact *> *contacts;

- (void)addContact:(JDKContact *)contact;

@end

NS_ASSUME_NONNULL_END
