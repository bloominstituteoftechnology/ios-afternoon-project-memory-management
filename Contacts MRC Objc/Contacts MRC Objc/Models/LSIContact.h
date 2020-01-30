//
//  LSIContact.h
//  Contacts MRC Objc
//
//  Created by macbook on 1/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIContact : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain, nullable) NSString *email;
@property (nonatomic, retain, nullable) NSString * phoneNum;

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                 andPhoneNum:(NSString *)phoneNum;

@end

NS_ASSUME_NONNULL_END
