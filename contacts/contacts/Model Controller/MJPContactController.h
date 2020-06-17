//
//  MJPContactController.h
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJPContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface MJPContactController : NSObject

@property (nonatomic, readonly) NSArray<MJPContact *> *contacts;

- (void)createContact:(MJPContact *)contact;
- (void)editContact:(MJPContact *)contact;

@end

NS_ASSUME_NONNULL_END
