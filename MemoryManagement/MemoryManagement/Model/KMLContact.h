//
//  KMLContact.h
//  MemoryManagement
//
//  Created by Keri Levesque on 4/22/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KMLContact : NSObject

@property (nonatomic, copy) NSString * _Nullable name;
@property(nonatomic, copy) NSString * _Nullable emailAddress;
@property (nonatomic, copy)NSString * _Nullable phoneNumber;

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
