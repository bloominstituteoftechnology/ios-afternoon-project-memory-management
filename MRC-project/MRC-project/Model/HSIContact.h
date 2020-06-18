//
//  HSIContact.h
//  MRC-project
//
//  Created by Kenny on 6/17/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSIContact : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *emailAddress;
@property (nonatomic, readonly, copy) NSString *phoneNumber;

-(instancetype)initWithName:(NSString *)name emailAddress:(NSString *)email phoneNumber:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
