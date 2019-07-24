//
//  TXCContactsController.h
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TXCContact;
NS_ASSUME_NONNULL_BEGIN

@interface TXCContactsController : NSObject

@property (retain) NSArray<TXCContact *> *contacts;

@end

NS_ASSUME_NONNULL_END
