//
//  JDKContact.h
//  ContactsMRC
//
//  Created by John Kouris on 2/18/20.
//  Copyright © 2020 John Kouris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDKContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;
+ (instancetype)contactWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
