//
//  CDGContact.h
//  ContactsMRC
//
//  Created by Chris Gonzales on 4/22/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CDGContact : NSObject

@property (nonatomic, readonly, copy, nullable) NSString *name;
@property (nonatomic, readonly, copy, nullable) NSString *emailAddress;
@property (nonatomic, readonly, copy, nullable) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
