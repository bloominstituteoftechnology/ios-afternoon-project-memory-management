//
//  CMDContacts.h
//  Contacts-MRC
//
//  Created by Chris Dobek on 6/17/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMDContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;
@property (nonatomic, copy) NSString *email;

- (instancetype)initWithName:(NSString *)name number:(NSString *)number email:(NSString *)email;

+ (instancetype)contactWithName:(NSString *)name  number:(NSString *)number email:(NSString *)email;
+ (instancetype)contactWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
