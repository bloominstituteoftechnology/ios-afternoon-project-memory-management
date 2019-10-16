//
//  REPContact.h
//  Contacts MRC
//
//  Created by Michael Redig on 10/16/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface REPContact : NSObject

@property (copy) NSString *name;
@property (copy) NSString *email;
@property (copy) NSString *phone;

+ (REPContact *)contactWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
