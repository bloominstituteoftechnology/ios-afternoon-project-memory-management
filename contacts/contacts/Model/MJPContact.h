//
//  MJPContact.h
//  contacts
//
//  Created by Mark Poggi on 6/17/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJPContact : NSObject

@property (copy) NSString *name;
@property (copy) NSString *emailAddress;
@property (copy) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
