//
//  HSVContact.h
//  Contacts MRC
//
//  Created by Hector Steven on 7/25/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSVContact : NSObject

@property (nonatomic, nonnull, copy) NSString *name;
@property (nonatomic, nonnull, copy) NSString *email;
@property (nonatomic, nonnull, copy) NSString *phoneNumber;

- (instancetype)initWithname:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
