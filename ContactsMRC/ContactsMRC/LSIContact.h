//
//  LSIContact.h
//  ContactsMRC
//
//  Created by Kelson Hartle on 7/31/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIContact : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic, copy) NSString *phonenumber;
@property (nonatomic,copy) NSString *email;


- (instancetype)initWithName:(NSString *)name
                 phonenumber:(NSString *)phoneNumber
                       email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
