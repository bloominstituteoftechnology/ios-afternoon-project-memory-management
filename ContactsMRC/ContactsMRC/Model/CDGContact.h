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

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *emailAddress;
@property (nonatomic, readonly) NSInteger phoneNumber;

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSInteger)phoneNumber;

@end

NS_ASSUME_NONNULL_END
