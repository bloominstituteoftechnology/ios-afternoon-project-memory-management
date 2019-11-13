//
//  JACContact.h
//  ContactsManagerMRC
//
//  Created by Jordan Christensen on 11/14/19.
//  Copyright © 2019 Mazjap Co. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JACContact : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *nickname;
@property (nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name nickname:(nullable NSString *)nickname email:(NSString *)email phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
