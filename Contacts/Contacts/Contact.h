//
//  Contact.h
//  Contacts
//
//  Created by Claudia Maciel on 8/11/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

// Properties
@property (nonatomic, readonly, copy) NSString *fullName;
@property (nonatomic, readonly, copy) NSString *emailAddress;
@property (nonatomic, readonly, copy) NSString *phoneNumber;

// Initializer
- (instancetype) initWithFullName: (NSString *)fullName emailAddress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
