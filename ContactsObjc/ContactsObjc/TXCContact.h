//
//  TXCContact.h
//  ContactsObjc
//
//  Created by Thomas Cacciatore on 7/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TXCContact : NSObject

@property (retain) NSString *name;
@property (retain) NSString *email;
@property (retain) NSString *phone;


- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
