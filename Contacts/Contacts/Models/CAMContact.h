//
//  CAMContact.h
//  Contacts
//
//  Created by Cody Morley on 7/22/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAMContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *company;

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone
                     company:(NSString *)company;

+ (instancetype)contactWithName:(NSString *)name
                          email:(NSString *)email
                          phone:(NSString *)phone
                        company:(NSString *)company;


@end

NS_ASSUME_NONNULL_END
