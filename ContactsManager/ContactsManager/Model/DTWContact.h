//
//  DTWContact.h
//  ContactsManager
//
//  Created by David Wright on 6/10/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DTWContact : NSObject

@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy, readwrite) NSString *email;
@property (nonatomic, copy, readwrite) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
