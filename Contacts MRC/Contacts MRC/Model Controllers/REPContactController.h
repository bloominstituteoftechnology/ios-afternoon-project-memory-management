//
//  REPContactController.h
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
@class REPContact;

NS_ASSUME_NONNULL_BEGIN

@interface REPContactController : NSObject

@property (readonly) NSArray<REPContact *> *contacts;

- (void)createContactWithName:(NSString *)name email:(NSString *)email andPhone:(NSString *)phone;

- (void)updateContact:(REPContact *)contact withName:(NSString *)name email:(NSString *)email andPhone:(NSString *)phone;


@end

NS_ASSUME_NONNULL_END
