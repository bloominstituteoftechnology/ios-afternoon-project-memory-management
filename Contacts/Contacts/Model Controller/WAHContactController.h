//
//  WAHContactController.h
//  Contacts
//
//  Created by Wyatt Harrell on 5/20/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WAHContact;

NS_ASSUME_NONNULL_BEGIN

@interface WAHContactController : NSObject

@property (nonatomic, readonly) NSMutableArray<WAHContact *> *contacts;

- (void)addContact:(WAHContact *)contact;

@end

NS_ASSUME_NONNULL_END
