//
//  Contact.h
//  Contacts MRC
//
//  Created by Matthew Martindale on 8/11/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, readonly, copy)NSString *name;
@property (nonatomic, readonly, copy)NSString *email;
@property (nonatomic, readonly, copy)NSString *phone;

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
