//
//  DPRContact.h
//  Contacts
//
//  Created by Dennis Rudolph on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPRContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
