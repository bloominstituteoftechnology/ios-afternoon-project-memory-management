//
//  JSContact.h
//  Contacts-C
//
//  Created by Jeffrey Santana on 10/16/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSContact : NSObject

@property (strong) NSString *name;
@property (strong) NSString *relationship;

- (instancetype)initWithName:(NSString *)name relationship:(NSString *)relationship;

@end

NS_ASSUME_NONNULL_END
