//
//  Contact.h
//  Contact
//
//  Created by Nick Nguyen on 4/22/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString* phoneNumber;

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                 phoneNumber: (NSString *)phoneNumber;
@end

NS_ASSUME_NONNULL_END
