//
//  JBContact.h
//  Contacts(MRC)
//
//  Created by Jon Bash on 2020-01-29.
//  Copyright © 2020 Jon Bash. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JBContact : NSObject

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic, nullable) NSString *emailAddress;
@property (retain, nonatomic, nullable) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name
                emailAddress:(NSString *)emailAddress
                 phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
