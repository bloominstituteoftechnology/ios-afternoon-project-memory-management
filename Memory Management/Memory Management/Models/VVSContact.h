//
//  VVSContact.h
//  Memory Management
//
//  Created by Vici Shaweddy on 2/18/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VVSContact : NSObject

@property (nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy)NSString *phoneNumber;

@end

NS_ASSUME_NONNULL_END
