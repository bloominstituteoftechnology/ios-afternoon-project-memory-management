//
//  BRDContactController.h
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BRDContact;

NS_ASSUME_NONNULL_BEGIN

@interface BRDContactController : NSObject

@property (nonatomic, readonly) NSMutableArray<BRDContact *> *contacts;

- (void)addContact:(BRDContact *)contact;

@end

NS_ASSUME_NONNULL_END
