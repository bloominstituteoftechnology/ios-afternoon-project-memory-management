//
//  SAHContact.h
//  ContactsMRC
//
//  Created by scott harris on 4/22/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAHContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *email;

- (instancetype)initWithName:(NSString *)name phone:(NSString *)phone email:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
