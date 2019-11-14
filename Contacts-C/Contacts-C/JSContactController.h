//
//  JSContactController.h
//  Contacts-C
//
//  Created by Jeffrey Santana on 10/16/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JSContact;

NS_ASSUME_NONNULL_BEGIN

@interface JSContactController : NSObject

@property (readonly) NSArray<JSContact *> *contacts;

- (void)addTestData;

@end

NS_ASSUME_NONNULL_END
