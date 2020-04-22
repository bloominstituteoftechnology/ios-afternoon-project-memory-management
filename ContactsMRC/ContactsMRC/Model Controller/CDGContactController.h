//
//  CDGContactController.h
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CDGContact;

NS_ASSUME_NONNULL_BEGIN

@interface CDGContactController : NSObject

@property (nonatomic, readonly, copy, nonnull) NSArray<CDGContact *> *contacts;

@end

NS_ASSUME_NONNULL_END
