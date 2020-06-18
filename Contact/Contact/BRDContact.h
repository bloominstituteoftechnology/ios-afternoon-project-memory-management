//
//  BRDContact.h
//  Contact
//
//  Created by Bradley Diroff on 6/18/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BRDContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
